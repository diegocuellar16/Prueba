using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;
using System.Data.SqlClient;
using MySql.Data.MySqlClient;
using CrudPasoAPaso;

namespace LoginPrueba
{
    public partial class Login : System.Web.UI.Page
    {
        
        
            protected void Unnamed1_Click(object sender, EventArgs e)
            {
                if (TxtContra.Text != "" && TxtUsuario.Text != "")//Validando espacio vacio
                {
                    string contra, usuario;
                    contra = EncryptString(TxtContra.Text, initVector);
                    usuario = TxtUsuario.Text;
                    datos1.valorGlobal = usuario; //llamamos la clase datos1


                    MySqlConnection conexion = new MySqlConnection("Server=127.0.0.1; database= chaleco; Uid=root; pwd=;");
                    var cmd = "SELECT Id_Usuario from usuarios WHERE Nombre_Usuario='" + usuario + "' AND Password='" + contra + "';";
                    MySqlCommand comando = new MySqlCommand(cmd, conexion);
                    conexion.Open();
                    int retorno = Convert.ToInt32(comando.ExecuteScalar());
                    if (retorno != 0)
                    {
                        Session["usermane"] = TxtUsuario;//Creamos una session 
                        Response.Redirect("Inicio.aspx");//Nos redirecciona a nuestro formulario
                    }
                    else
                    {
                        //Mensaje de alerta que se mostrará; como que fuese un MessageBox solo que con animacion javascript de SweetAlert
                        alerta.Text = "<script>Swal.fire('Error de Credenciales', 'Su usuario o contraseña no son correctos', 'error') </script>";
                        TxtContra.Text = "";//Limpia los text box
                        TxtUsuario.Text = "";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
                }
            }

            private const string initVector = "pemgail9uzpgzl88";//llave del encriptado        
            private const int keysize = 256;// Esta constante se usa para determinar el tamaño de clave del algoritmo de cifrado
                                            //Encriptar
            public static string EncryptString(string plainText, string passPhrase)
            {
                byte[] initVectorBytes = Encoding.UTF8.GetBytes(initVector);
                byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);
                PasswordDeriveBytes password = new PasswordDeriveBytes(passPhrase, null);
                byte[] keyBytes = password.GetBytes(keysize / 8);
                RijndaelManaged symmetricKey = new RijndaelManaged();
                symmetricKey.Mode = CipherMode.CBC;
                ICryptoTransform encryptor = symmetricKey.CreateEncryptor(keyBytes, initVectorBytes);
                MemoryStream memoryStream = new MemoryStream();
                CryptoStream cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write);
                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                cryptoStream.FlushFinalBlock();
                byte[] cipherTextBytes = memoryStream.ToArray();
                memoryStream.Close();
                cryptoStream.Close();
                return Convert.ToBase64String(cipherTextBytes);
            }
            protected void Button1_Click(object sender, EventArgs e)
            {
                Response.Redirect("Registro.aspx");//nos redirecciona al formulario Web de registro
            }
        
    }
}
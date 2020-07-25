using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using CrudPasoAPaso;
using System.Security.Cryptography;
using System.IO;
using System.Text;

namespace LoginPrueba
{
    public partial class Registro : System.Web.UI.Page
    {
        
       
            protected void Unnamed1_Click(object sender, EventArgs e)
            {
                if (txtusuario.Text.Trim() != "" && txtclave.Text.Trim() != "" && txtconfirm.Text.Trim() != "" && txtfirst.Text.Trim() != "" && txtapellido.Text.Trim() != "" && txtgmail.Text.Trim() != "")
                {
                    if (txtclave.Text == txtconfirm.Text)
                    {
                        string nombre;
                        string apellido;
                        string encriptada;
                        string usuario;
                        string correo;

                        nombre = txtfirst.Text;
                        apellido = txtapellido.Text;
                        usuario = txtusuario.Text;
                        encriptada = EncryptString(txtclave.Text, initVector);
                        correo = txtgmail.Text;
                        if (conexiones.UsuariosRepetidos(usuario, encriptada, nombre, apellido, correo) == 0)
                        {
                            alerta.Text = "<script>Swal.fire('Registrado con éxito', '¡Gracias por preferirnos!', 'success'); </script>";

                            txtfirst.Text = "";
                            txtapellido.Text = "";
                            txtusuario.Text = "";
                            txtclave.Text = "";
                            txtconfirm.Text = "";
                            txtgmail.Text = "";
                        }
                        else
                        {
                            alerta.Text = "<script>Swal.fire('Este usuario ya existe', 'Elije  nuevo nombre de usuario', 'error'); </script>";
                        }
                    }
                    else
                    {
                        alerta.Text = "<script>Swal.fire('Contraseña incorrecta', 'Repita su contraseña.', 'error');</script>";
                    }
                }
                else
                {
                    alerta.Text = "<script>Swal.fire('ADVERTENCIA', 'No deje espacios en blanco', 'error') </script>";
                }
            }
            private const string initVector = "pemgail9uzpgzl88";
            // This constant is used to determine the keysize of the encryption algorithm
            private const int keysize = 256;
            //Encrypt
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
            protected void btnlogin_Click(object sender, EventArgs e)
            {
                Response.Redirect("Login.aspx");
            }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}
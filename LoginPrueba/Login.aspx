<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="LoginPrueba.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="EstilosCss/Login.css" rel="stylesheet" />
    <script src="SweetAlert/sweetalert2.all.min.js"></script>
    <script src="SweetAlert/sweetalert2.js"></script>


    <title>Login</title>
</head>

<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
            <!-- Brand -->
            <br />
            <a class="navbar-brand" href="#">Drugstore</a>
            <asp:Button ID="btnregistro" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Registro" OnClick="Button1_Click" Height="32px" Width="98px" />
            <br />
        </nav>
        <div class="my-content">
            <div class="container">
                <div class="row">
                    <div class="col-sn-12">
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 myform-cont">
                        <h1>Login </h1>
                        <div class="myform-top">
                            <div class="myform-top-left">
                                <h3>Ingresa a Drugstore</h3>
                                <p>Digite tu usuario y contraseña </p>
                            </div>
                            <div class="myform-top-reght">
                                <%--<i class="fas fa-key"></i>--%>
                            </div>
                        </div>
                        <div class="myform-bottom">
                            <%--<form role="form" action="" method="post" class="">--%>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtUsuario" runat="server" placeholder="Usuario..." type="text" class="form-control" onpaste="return false" minlength="4" MaxLength="15" />
                                </div>
                                <div class="form-group">
                                    <asp:TextBox ID="TxtContra" runat="server" placeholder="Contraseña..." type="password" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
                                </div>

                                <asp:Button runat="server" Text="Entrar" CssClass="mybtn" OnClick="Unnamed1_Click"></asp:Button>

                                <div>
                                    <asp:HyperLink ID="olvidaste" runat="server" CssClass="olvidaste" Text="¿Has olvidado tu contraseña?" NavigateUrl="RecuperarCuenta.aspx" />
                                </div>

                                <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
                            <%--</form>--%>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>
</html>

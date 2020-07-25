<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="LoginPrueba.Registro" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link href="css/bootstrap.min.css" rel="stylesheet" />
 <link href="EstilosCss/Login.css" rel="stylesheet" />
 <script src="SweetAlert/sweetalert2.all.min.js"></script>
 <script src="SweetAlert/sweetalert2.js"></script>
 <title>Registro</title>
</head>
<body>
 <form id="form1" runat="server">
 <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
 <!-- Brand -->
 <a class="navbar-brand" href="#">Drugstore</a>
 <asp:Button ID="btnlogin" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Login" OnClick="btnlogin_Click" />
 </nav>
 <div class="my-content">
 <div class="container">
 <div class="row">
 <div class="col-sn-12">
 </div>
 </div>
 <div class="row">
 <div class="col-sm-6 col-sm-offset-3 myform-cont">
 <h1>Registro </h1>
 <div class="myform-top">
 <div class="myform-top-left">
 <h3>Drugstore</h3>
 </div>
 </div>
 <div class="myform-bottom">
 <div class="form-group">
 <asp:TextBox ID="txtfirst" runat="server" placeholder="Nombres..." type="text" class="form-control" onpaste="return false" minlength="5" MaxLength="30"
onkeypress="return validar(event)"></asp:TextBox>
 </div>
 <div class="form-group">
 <asp:TextBox ID="txtapellido" runat="server" placeholder="Apellidos..." type="text" class="form-control" onpaste="return false" minlength="5" MaxLength="30"
onkeypress="return validar(event)"></asp:TextBox>
 </div>
 <div class="form-group">
 <asp:TextBox ID="txtusuario" runat="server" placeholder="Usuario..." type="text" class="form-control" onpaste="return false" minlength="5" MaxLength="15" />
 </div>
 <div class="form-group">
 <asp:TextBox ID="txtclave" runat="server" placeholder="Contraseña..." type="password" class="form-control" onpaste="return false" minlength="2" MaxLength="15" />
 </div>
 <div class="form-group">
 <asp:TextBox ID="txtconfirm" runat="server" placeholder="Repita Contraseña..." type="password" class="form-control" onpaste="return false" minlength="2" MaxLength="15"
/>
 </div>
 <div class="form-group">
 <asp:TextBox ID="txtgmail" runat="server" placeholder="Gmail..." type="email" class="form-control" onpaste="return false" minlength="5" MaxLength="30" />
 </div>
  <asp:Button runat="server" Text="Registrarse" CssClass="mybtn" OnClick="Unnamed1_Click"></asp:Button>
 <asp:Literal ID="alerta" runat="server" Text=""></asp:Literal>
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

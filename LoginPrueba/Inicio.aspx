<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="LoginPrueba.Inicio" %>

<!DOCTYPE html>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,400&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href="EstilosCss/EstiloInicio.css" rel="stylesheet" />

    <title>Menu Principal</title>
</head>


<body>

    <nav class="navbar navbar-expand-sm bg-dark navbar-dark fixed-top">
        <form runat="server">
            <br />
            <a class="navbar-brand" href="#">Proyecto Drugstore</a>
            <%--<asp:Button ID="btningresar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Agregar" OnClick="btningresar_Click" />
            <%--<asp:Button ID="btneliminar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Eliminar" OnClick="btneliminar_Click" />--%>
           <%-- <asp:Button ID="btneditar" class="btn btn-outline-success my-2 my-sm-0" type="submit" runat="server" Text="Editar" OnClick="btneditar_Click" />
            <asp:Button ID="btncerrar" class="btn btn-outline-warning my-2 my-sm-0" type="submit" runat="server" Text="Cerrar sesion" OnClick="btncerrar_Click" />--%>
            <br />
        </form>
    </nav>

    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 70%;
            height: 65%;
        }
    </style>


    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>

        <!-- The slideshow -->
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Imagenes/imagen1.jpg" width="1100" height="500" />
            </div>
            <div class="carousel-item">
                <img src="Imagenes/imagen2.jpg" width="1100" height="500" />
            </div>
            <div class="carousel-item">
                <img src="Imagenes/imagen3.jpg" width="1100" height="500" />
            </div>
            <div class="carousel-item">
                <img src="Imagenes/imagen4.jpg" width="1100" height="500" />
            </div>
            <div class="carousel-item">
                <img src="Imagenes/imagen3.jpg" width="1100" height="500" />
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>
    </div>
    <asp:Label ID="label1" runat="server" Text=""></asp:Label>
    <asp:Label ID="label2" runat="server" Text=""></asp:Label>

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

</body>
</html>


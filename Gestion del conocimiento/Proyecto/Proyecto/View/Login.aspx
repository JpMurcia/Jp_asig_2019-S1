<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto.View.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <meta name="copyright" content="Todos los derechos reservador a STM-SAS" />
    <meta name="description" content="Software CRM para la gestión y relación de los clientes y posibles estudiante de las nuevas ofertas académicas brinda por la Universidad de la Amazonia" />
    <link rel="canonical" href="https://www.Crm-Uniamazonia.com/Home/Login" />

    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Material+Icons" />
    <link href="../Content/css/boo.css" rel="stylesheet" />
    <link href="../Content/css/Propio.css" rel="stylesheet" />
    <link href="../Content/css/sweetalert2.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="contenedor">
            <div class="imgBox">
                <img src="../Content/img/Logo2.jpg" />
            </div>
            <div class="detalles">
                <div class="card2">
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:Label CssClass="bmd-label-floating" ID="Usuario" runat="server" Text="Usuario"></asp:Label>
                            <asp:TextBox CssClass="form-control" runat="server" ID="txt_Usuario"></asp:TextBox>
                            <span class="bmd-help">Por favor digite su Usuario</span>
                        </div>
                        <div class="form-group">
                            <asp:Label CssClass="bmd-label-floating" ID="Label1" runat="server" Text="Contrasena"></asp:Label>
                            <asp:TextBox TextMode="Password"  CssClass="form-control" runat="server" ID="text_Contrasena"></asp:TextBox>
                            <span class="bmd-help">Por favor digite su Usuario</span>
                        </div>

                        <div class="bmd-form-group">
                            <asp:Button ID="Iniciar" CssClass="btn btn-raised btn-primary btn-round" Style="margin-left: 30% !important; z-index: 0;" runat="server" Text="Iniciar" OnClick="IniciarSession" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://unpkg.com/popper.js@1.12.6/dist/umd/popper.js"></script>
    <script src="https://unpkg.com/bootstrap-material-design@4.1.1/dist/js/bootstrap-material-design.js"></script>
    <script src="../Content/js/sweetalert2.min.js"></script>
    <script>
        $(document).ready(function () { $('body').bootstrapMaterialDesign(); });
        function entra() {
            Swal.fire({
                type: 'error',
                title: 'Ha sucedido un Error su Usuario o Contrseña son incorrectos',
                showConfirmButton: false,
                timer: 3500
            })
        }

    </script>
</body>
</html>

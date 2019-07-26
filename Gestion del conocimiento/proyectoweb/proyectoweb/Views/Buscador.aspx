<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="proyectoweb.Views.Buscador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-rose card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">face</i>
                            </div>
                            <h4 class="card-title">Miembros</h4>
                        </div>
                        <div class="card-body">


                            <br />

                            <br />
                            <br />
                            <div class="col-md-8 ml-auto mr-auto">
                           <%--     <div class="input-group no-border">--%>
                                    <input type="text" value="" class="form-control">
                                    <button type="submit" class="btn btn-white btn-round btn-just-icon">
                                        <%--                                <asp:Button runat="server" placeholder="Search..." CssClass="btn btn-white btn-round btn-just-icon"/>--%>

                                        <i class="material-icons">search</i>
                                        <div class="ripple-container"></div>


                                    </button>

                          <%--      </div>--%>
                            </div>



                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>

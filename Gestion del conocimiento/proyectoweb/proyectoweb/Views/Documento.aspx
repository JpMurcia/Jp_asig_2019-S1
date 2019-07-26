<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Documento.aspx.cs" Inherits="proyectoweb.Views.Documento" %>

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




                            <div class="row">
                                <div class="col-md-12 ml-auto mr-auto">
                                    <div class="card">

                                        <div class="card-body">

                                            <div class="col-sm-12 ">
                                                <div class="row">
                                                    <div class="col-md-4">
                                                        <div class="form-group">
                                                            <asp:Label runat="server" Text="Nombre de Documento"></asp:Label>
                                                            <%--     <input type="text" class="form-control"  placeholder="PD-A-GT-06">--%>
                                                            <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" placeholder="Eje: Manual de usuario"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <div class="col-md-6 text-center">
                                                        <div class="form-group">
                                                            <div class="fileinput fileinput-new " data-provides="fileinput">

                                                                <div class="fileinput-filename fileinput-exists thumbnail "></div>
                                                                <div class="text-right">
                                                                    <div>
                                                                        <span class="btn btn-raised btn-round btn-default btn-file">
                                                                            <asp:FileUpload ID="FileUpload" runat="server" CssClass="fileinput-new" OnClick="UploadButton_Click" Text="imagen" />
                                                                            Seleccionar el Documento
                                                                        </span>

                                                                        <a href="#pablo" class="btn btn-danger btn-round fileinput-exists " data-dismiss="fileinput"><i class="fa fa-times"></i></a>
                                                                    </div>


                                                                </div>



                                                            </div>

                                                        </div>

                                                    </div>




                                                </div>


                                            </div>

                                            <br />

                                            <div class="row">

                                                <div class="col-sm-12">
                                                    <div class="row">
                                                        <div class="col-md-3">
                                                            <div class="form-group">
                                                                <asp:Label runat="server" Text="Digite el Codigo"></asp:Label>
                                                           <%--     <input type="text" class="form-control"  placeholder="PD-A-GT-06">--%>
                                                               <asp:TextBox runat="server" ID="codigo" CssClass="form-control"  placeholder="Eje: PD-A-GT-06" ></asp:TextBox>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-5">
                                                            <div class="form-group">
                                                                <asp:Label runat="server" Text="Procedimiento Vinculado"></asp:Label>

                                                                <%--         <input type="text" class="form-control" placeholder=".col-md-5">--%>
                                                                <asp:DropDownList runat="server" ID="DDL_activi" CssClass="form-control selectpicker"></asp:DropDownList>

                                                            </div>
                                                        </div>
                                                        <div class="col-md-4">
                                                            <div class="form-group">


                                                                <asp:Label runat="server" Text="Tipo De Documento"></asp:Label>
                                                                <%--    <input type="text" class="form-control" placeholder=".col-md-4">--%>

                                                                <asp:DropDownList runat="server" ID="DDL_tipos_d" CssClass="form-control selectpicker"></asp:DropDownList>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>





                                            <br />
                                            <br />

                                            <div class="align-content-center">
                                                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-primary pull-right cold-md-12">Publicar</asp:LinkButton>
                                            </div>


                                        </div>
                                    </div>

                                </div>



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

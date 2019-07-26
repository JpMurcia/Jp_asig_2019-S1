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



                                            <div class="col-md-12">
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                             
                                                    <div class="fileinput-filename fileinput-exists thumbnail "></div>
                                                    <div class="col-md-12 col-auto">
                                                        <div>
                                                            <span class="btn btn-raised btn-round btn-default btn-file">
                                                                <asp:FileUpload ID="FileUpload" runat="server" CssClass="fileinput-new" OnClick="UploadButton_Click" Text="imagen" />
                                                                Seleccionar el Documento
                                                            </span>
                                                            <a href="#pablo" class="btn btn-danger btn-round fileinput-exists" data-dismiss="fileinput"><i class="fa fa-times"></i></a>
                                                        
                                                                                      <asp:DropDownList runat="server" ID="DDL_tipos_d" CssClass="form-control selectpicker"></asp:DropDownList>


                                                            <asp:DropDownList runat="server" ID="DDL_activi" CssClass="form-control selectpicker"></asp:DropDownList>
                                                        
                                                        </div>
                          
                                                    </div>
                                                </div>
                                                
                                            </div>





                                        </div>
                                    </div>

                                    <br />

                                </div>
                            </div>



                            <div class="col-md-6">
                                <div class="form-group label-floating is-empty">
                                    <label class="bmd-label-floating">Nombre de la Noticia</label>
                                    <asp:TextBox runat="server" name="name" ID="Titulo" Columns="20" class="form-control">
                                    </asp:TextBox>
                                    <span class="material-input"></span>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="align-content-center">
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CssClass="btn btn-primary pull-right cold-md-12">Publicar</asp:LinkButton>
                    </div>
                </div>
            </div>
        </div>
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>

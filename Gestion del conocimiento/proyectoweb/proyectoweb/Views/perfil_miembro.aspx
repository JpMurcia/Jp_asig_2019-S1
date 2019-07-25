﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="perfil_miembro.aspx.cs" Inherits="proyectoweb.Views.perfil_miembro" %>

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
                                <div class="col-md-11 ml-auto mr-auto">
                                    <div class="card">

                                        <div class="row">

                                            <div class="col-md-4 ml-auto mr-auto">
                                                <br />
                                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                                    <div class="fileinput-new thumbnail img-raised">
                                                        <%-- Aqui se ubica la imagen del miembro--%>

                                                        <img height="250" id="imagen_perfil" runat="server" src="../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                                                    </div>
                                                    <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                                </div>
                                                <div class="info info-horizontal">
                                                    <div class="description">
                                                        <%--        <asp:TextBox runat="server"  ID="nombre_miembro"></asp:TextBox>--%>
                                                        <h3 class="info-title">
                                                            <asp:Label ID="nom_miebro" runat="server" />
                                                        </h3>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 mr-auto">
                                                <h3 class="info-text">Informacion Basica 
                                                 
                                                </h3>
                                                <h5>


                                                    <asp:Label runat="server" ID="nombre"></asp:Label><br />
                                                    <asp:Label runat="server" ID="cc"></asp:Label><br />
                                                    <asp:Label runat="server" ID="fecha_naci"></asp:Label><br />
                                                </h5>
                                                <h3 class="info-text">Informacion Laboral
                                                 
                                                </h3>
                                                <h5>
                                                    <asp:Label runat="server" ID="area1"></asp:Label><br />
                                                    <asp:Label runat="server" ID="perfil"></asp:Label><br />
                                                    <asp:Label runat="server" ID="email"></asp:Label><br />
                                                </h5>



                                            </div>
                                        </div>

                                    </div>


                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-12 ml-auto mr-auto">
                                    <div class="card">
                                        <div class="card-header card-header-warning card-header-icon  text-center">
                                            <%--<div class="card-icon">
                                                <i class="material-icons">assignment</i>
                                            </div>--%>
                                            <h4 class="card-title">Conocimientos</h4>
                                        </div>
                                        <div class="card-body">

                                            <div class="table-responsive">
                                                <table class="table table-striped">
                                                    <thead>
                                                        <tr>



                                                            <th>Conocimiento</th>

                                                            <th class="text-center">Descripcion</th>
                                                            <th class="text-center">Calificacion</th>
                                                            
                                                            <th class="text-right">Verificado</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td class="text-center">C#</td>
                                                             <td class="text-center">descripcion                                                   </td>
                                                            <td  class="text-center">
                                                                <asp:TextBox runat="server" TextMode="Number" MaxLength="1"  ></asp:TextBox>
                                                            </td>
                                                           
                                                            <td class="text-right">
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input" type="checkbox" value='<%# Boolean.Parse(Eval("estado").ToString()) %>'>
                                                                        <span class="form-check-sign">
                                                                            <span class="check"></span>
                                                                        </span>
                                                                    </label>
                                                                </div>

                                                            </td>


                                                        </tr>


                                                    </tbody>
                                                </table>
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
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>

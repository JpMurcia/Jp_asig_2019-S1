<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="permisos.aspx.cs" Inherits="proyectoweb.Views.permisos1" %>
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
                                <i class="material-icons">assignment</i>
                            </div>
                            <h4 class="card-title">Miembros</h4>
                        </div>


                        <div class="card-body">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th>   Nombre</th>
                                            <th class="text-center">Perfil</th>
                                             <th class="text-center">Correo</th>
                                            <th class="text-center">Editar</th>
                                         
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                             <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                        <%-- 
                                                      <asp:Repeater ID="Repeater2" OnItemDataBound="RepiterItem" runat="server">--%>
                                                        <%-- <asp:Repeater ID="RepeaterMiembro" OnItemCommand="RepiterItemCommand" runat="server">--%>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td><%#Eval("nom_perso") %> </td>


                                                               


                                                              





                                                                <td class="td-actions text-center ">
                                                                    <%#Eval("nom_perfil") %>
                                                                </td>


                                                                <td class="td-actions text-center ">
                                                                    <%#Eval("email_user") %>
                                                              
                                                                </td>

                                                                
                                                                <td class="td-actions text-center ">



                                                                       <a href="perfil_miembro.aspx?Id=<%#Eval("id_perso") %>" class="btn btn-success" ><i class="material-icons">edit</i></a>

<%--                                                                    <asp:LinkButton CssClass="btn btn-primary" runat="server" OnCommand="Modal_Command1" CommandArgument='<%# Eval("id_perso") %>'>
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>--%>

                                                                   
                                                                 
                                                             
                                                                                                     
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                             </asp:Repeater>




                                    </tbody>
                                </table>
                            </div>
                          <%--  <button type="button" class="btn  btn-success">Actualizar</button>--%>



                            <%--  --%>
                            <%--  --%>
                            <%--  --%>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>

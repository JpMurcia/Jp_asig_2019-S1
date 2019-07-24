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
                                            <th class="text-center">Programa</th>
                                            <th class="text-center">     Rol</th>
                                          <th class="text-right">Correo</th>
                                           
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



                                                                       <a href="perfil_miembro.aspx?Id=<%#Eval("id_perso") %>" class="btn btn-success" ><i class="material-icons">edit</i></a>

<%--                                                                    <asp:LinkButton CssClass="btn btn-primary" runat="server" OnCommand="Modal_Command1" CommandArgument='<%# Eval("id_perso") %>'>
                                                                       <i class="material-icons">edit</i>Editar
                                                                    </asp:LinkButton>--%>

                                                                   
                                                                 
                                                             
                                                                                                     
                                                                </td>

                                                                <td class="td-actions text-right ">
                                                              
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                             </asp:Repeater>




                                    </tbody>
                                </table>
                            </div>
                          <%--  <button type="button" class="btn  btn-success">Actualizar</button>--%>


                              <!-- Classic Modal -->
              <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                  <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title">Modal title</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        <i class="material-icons">clear</i>
                      </button>
                    </div>
                      <div class="modal-body">
                          <p>
                              <%#Eval("nom_perfil") %> Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.
                          </p>
                          <asp:Label runat="server" ID="nom"></asp:Label>

                           <div class="col-md-5 ml-auto">
                          <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                              <div class="fileinput-new thumbnail img-raised">
                                  <%-- Aqui se ubica la imagen del miembro--%>
                                  <img height="300" id="Img1" runat="server" src="../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                              </div>
                              <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                          </div>
                        </div>
                          <div class="form-group bmd-form-group is-filled">
                              <label class="label-control">Datetime Picker</label>
                              <input type="text" class="form-control datetimepicker" value="07/02/2018">
                              <span class="material-input"></span>
                        <span class="material-input"></span>
                      </div>
                    </div>
                    <div class="modal-footer">
                      <button type="button" class="btn btn-link">Nice Button</button>
                      <button type="button" class="btn btn-danger btn-link" data-dismiss="modal">Close    </button>
                    </div>
                  </div>
                </div>
              </div>
              <!--  End Modal -->
                            <%--  --%>
                            <%--  --%>


                               <div class="modal fade" id="modal-datos" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-signup" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title card-title">Miembro</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="material-icons">clear</i>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-5 ml-auto">
                                <div class="fileinput fileinput-new text-center" data-provides="fileinput">
                                    <div class="fileinput-new thumbnail img-raised">
                                        <%-- Aqui se ubica la imagen del miembro--%>
                                        <img  height="300"  id="imagen_perfil" runat="server" src="../Content/assetsLogin/img/faces/card-profile1-square.jpg" />
                                    </div>
                                    <div class="fileinput-preview fileinput-exists thumbnail img-raised"></div>
                                </div>
                                <div class="info info-horizontal">
                                    <div class="description">
                                <%--        <asp:TextBox runat="server"  ID="nombre_miembro"></asp:TextBox>--%>
                                        <h3 class="info-title"><asp:Label  ID="nom_miebro" runat="server" /> </h3>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-5 mr-auto">
                                <h5 class="info-text">Programa:   <asp:Label  ID="programa_miembro" runat="server" /> </h5>
                                <table class="table">
                                    <thead>

                                        
                                        <tr>
                                            
                                           
                                            <asp:TextBox runat="server" disabled="disabled" type="text" ID="nom_usaurioMostrar" class="form-control" TextMode="multiline" placeholder="">
                                            </asp:TextBox>
                                            <p id="hola"></p>

                                            <th class="text-left">Proyecto</th>
                                            <th class="text-right">Publicar</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                          <%--              <asp:Repeater ID="InnerRepeater" runat="server">
                                            <ItemTemplate>--%>

                                                <tr>



                                                    <td class="text-left">Trabajo</td>

                                                    <td class="td-actions text-right ">
                                                        <div class="togglebutton">
                                                            <label>

                                                         <%--       <asp:HiddenField ID="id_usuario" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="ide" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="tipo" Value='<%#Eval("cargo")%>' runat="server" /> --%>
                                                                <asp:CheckBox runat="server" ID="estado" Checked="false" />


                                                            </label>
                                                        </div>
                                                    </td>

                                                </tr>

                                        
                                                <tr>



                                                    <td class="text-left">Trabajo</td>

                                                    <td class="td-actions text-right ">
                                                        <div class="togglebutton">
                                                            <label>

                                                         <%--       <asp:HiddenField ID="id_usuario" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="ide" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="tipo" Value='<%#Eval("cargo")%>' runat="server" />--%>
                                                                <asp:CheckBox runat="server" ID="CheckBox1" Checked="true" />


                                                            </label>
                                                        </div>

                                                    </td>
                                                     

                                                </tr>
                                           <tr>
                                          <td class="td-actions text-right ">
                                                        <div class="togglebutton">
                                                            <label>

                                                         <%--       <asp:HiddenField ID="id_usuario" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="ide" Value='<%#Eval("identificador")%>' runat="server" />
                                                                <asp:HiddenField ID="tipo" Value='<%#Eval("cargo")%>' runat="server" />--%>
                                                                <asp:CheckBox runat="server" ID="CheckBox2" Checked="true" />


                                                            </label>
                                                        </div>
                                          </td>
                                           </tr>
                                        <tr>
                                            <div class="form-check">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    First Checkbox
                    <span class="form-check-sign">
                        <span class="check"></span>
                    </span>
                                                </label>
                                            </div>
                                        </tr>

                                        <%--    </ItemTemplate>
                                        </asp:Repeater>--%>


                                    </tbody>
                                </table>


                            </div>
                        </div>



                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        <asp:Button type="button" CssClass="btn btn-primary" OnClick="guardar_Click" runat="server" ID="guardar" Text="Guardar Cambios" />
                    </div>
                </div>
            </div>
        </div>

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

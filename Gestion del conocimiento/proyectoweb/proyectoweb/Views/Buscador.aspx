<%@ Page Title="" Language="C#" MasterPageFile="~/Views/administracion.Master" AutoEventWireup="true" CodeBehind="Buscador.aspx.cs" Inherits="proyectoweb.Views.Buscador" %>


<%--<script runat="server" type="text/javascript"> { "@context": "https://schema.org",
    "@type": "QAPage",
    "mainEntity": {
      "@type": "",
      "name": "How many ounces are there in a pound?",
      "text": "I have taken up a new interest in baking and keep running across directions in ounces and pounds. I have to translate between them and was wondering how many ounces are in a pound?",
      "answerCount": 3,
      "upvoteCount": 26,
      "dateCreated": "2016-07-23T21:11Z",
      "author": {
        "@type": "Person",
        "name": "New Baking User"
      },
      "acceptedAnswer": {
        "@type": "Answer",
        "text": "1 pound (lb) is equal to 16 ounces (oz).",
        "dateCreated": "2016-11-02T21:11Z",
        "upvoteCount": 1337,
        "url": "https://example.com/question1#acceptedAnswer",
        "author": {
          "@type": "Person",
          "name": "SomeUser"
        }
      } 
        }</script>--%>


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
                                <i class="material-icons">account_balance_wallet</i>
                            </div>
                            <h4 class="card-title">Buscador</h4>
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


                        <br />
                        
                        <br />
                          <div class="col-md-12">
                    <div class="card">
                        <div class="card-header card-header-rose card-header-icon">
                            <div class="card-icon">
                                <i class="material-icons">assignment_late</i>
                            </div>
                            <h4 class="card-title">Mesa de Servicio(Asignado)</h4>
                        </div>
                      
                                  <div class="card-body">

                            <div class="table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            
                                            <th> Prioridad</th>
                                            <th class="text-center">Departamento</th>
                                             <th class="text-center">Tipo</th>
                                            <th class="text-center">Descripcion</th>
                                         
                                           
                                        </tr>
                                    </thead>
                                    <tbody>
                                       
                                             <asp:Repeater ID="RepeaterMiembro" runat="server">
                                                        <%-- 
                                                      <asp:Repeater ID="Repeater2" OnItemDataBound="RepiterItem" runat="server">--%>
                                                        <%-- <asp:Repeater ID="RepeaterMiembro" OnItemCommand="RepiterItemCommand" runat="server">--%>
                                                        <ItemTemplate>
                                                            <tr>

                                                                <td><%#Eval("nom_prioridad") %> </td>


                                                               


                                                              





                                                                <td class="td-actions text-center ">
                                                                    <%#Eval("nom_departa") %>
                                                                </td>


                                                                <td class="td-actions text-center ">
                                                                    <%#Eval("nom_tipo") %>
                                                              
                                                                </td>

                                                                
                                                                <td class="td-actions text-center ">


                                                                      <%#Eval("descrip_solicit") %>
                                                                 
                                                             
                                                                                                     
                                                                </td>
                                                            </tr>
                                                        </ItemTemplate>
                                             </asp:Repeater>




                                    </tbody>
                                </table>
                            </div>
                                     </div>    
                        </div>
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
    </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptsContent" runat="server">
</asp:Content>

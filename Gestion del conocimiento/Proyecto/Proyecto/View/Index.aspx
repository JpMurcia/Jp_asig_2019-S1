<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Proyecto.View.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <ext:XScript runat="server">
          <script>
            var addTab = function (tabPanel, id, url, menuItem) {
                var tab = tabPanel.getComponent(id);

                if (!tab) {
                    tab = tabPanel.add({
                        id       : id,
                        title    : url,
                        closable : true,
                        menuItem : menuItem,
                        loader   : {
                            url      : url,
                            renderer : "frame",
                            loadMask : {
                                showMask : true,
                                msg      : "Cargando " + url + "..."
                            }
                        }
                    });

                    tab.on("activate", function (tab) {
                        #{MenuPanel1}.setSelection(tab.menuItem);
                    });
                }

                tabPanel.setActiveTab(tab);
            }
        </script>
    </ext:XScript>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" Theme="Neptune" runat="server" />
        <ext:Viewport runat="server" Layout="BorderLayout">
            <Items>

                <ext:Panel
                    runat="server"
                    Region="West"
                    Title="Menú Navegación"
                    Width="200"
                    ID="pnlSettings"
                    Collapsible="true"
                    Split="true"
                    MinWidth="250"
                    MaxWidth="400"
                    MarginSpec="5 0 5 5"
                    Layout="AccordionLayout">

                    <Items>
                        <ext:MenuPanel
                            ID="MenuPanel1"
                            runat="server"
                            Width="200"
                            Title="Impuesto IC"
                            Icon="UserBrown"
                            Region="West">
                            <Menu runat="server">
                                <Items>
                                    <ext:MenuItem Icon="ArrowRight" runat="server" Text="Auto-Liquidación">
                                        <Listeners>
                                            <Click Handler="addTab(#{TabPanel1}, 'idAu_li', 'http://www.sencha.com', this);" />
                                        </Listeners>
                                    </ext:MenuItem>

                                    <ext:MenuSeparator />

                                    <ext:MenuItem Icon="ArrowRight" runat="server" Text="Reimpresión">
                                        <Listeners>
                                            <Click Handler="addTab(#{TabPanel1}, 'idRe_Ic', '../../Views/PrivateViews/Reimpresion.aspx', this,'Reimpresión');" />
                                        </Listeners>
                                    </ext:MenuItem>
                                    <ext:MenuSeparator />
                                </Items>
                            </Menu>
                        </ext:MenuPanel>
                        <ext:MenuPanel
                            ID="MenuPanel5"
                            runat="server"
                            Width="200"
                            Title="Configuraciones"
                            Icon="CogGo"
                            Region="West">
                            <Menu runat="server">
                                <Items>
                                    <ext:MenuItem Icon="ArrowRight" runat="server" Text="Ext.NET">
                                        <Listeners>
                                            <Click Handler="addTab(#{TabPanel1}, 'idClt', 'http://ext.net', this);" />
                                        </Listeners>
                                    </ext:MenuItem>
                                    <ext:MenuSeparator />
                                    <ext:MenuItem runat="server" Text="Ext.NET forums">
                                        <Listeners>
                                            <Click Handler="addTab(#{TabPanel1}, 'idGgl', 'http://mitchaguilar.github.io/MitchCode/index4.html', this);" />
                                        </Listeners>
                                    </ext:MenuItem>
                                    <ext:MenuSeparator />
                                    <ext:MenuItem runat="server" Text="Sencha">
                                        <Listeners>
                                            <Click Handler="addTab(#{TabPanel1}, 'idExt', '../../Views/PublicViews/index.aspx', this);" />
                                        </Listeners>
                                    </ext:MenuItem>
                                </Items>
                            </Menu>
                        </ext:MenuPanel>

                    </Items>
                </ext:Panel>
                <%--<ext:Panel
                    runat="server"
                    Title="Menu"
                    Region="West"
                    Layout="AccordionLayout"
                    Width="225"
                    MinWidth="225"
                    MaxWidth="400"
                    Split="true"
                    Collapsible="true">--%>
                <%-- <Menu runat="server">
                        <Items>
                            <ext:MenuItem runat="server" Text="Ext.NET">
                                <Listeners>
                                    <Click Handler="addTab(#{TabPanel1}, 'idClt', 'http://ext.net', this);" />
                                </Listeners>
                            </ext:MenuItem>

                            <ext:MenuSeparator />

                            <ext:MenuItem runat="server" Text="Ext.NET forums">
                                <Listeners>
                                    <Click Handler="addTab(#{TabPanel1}, 'idGgl', 'http://forums.ext.net', this);" />
                                </Listeners>
                            </ext:MenuItem>

                            <ext:MenuSeparator />

                            <ext:MenuItem runat="server" Text="Sencha">
                                <Listeners>
                                    <Click Handler="addTab(#{TabPanel1}, 'idExt', 'http://www.sencha.com', this);" />
                                </Listeners>
                            </ext:MenuItem>
                        </Items>
                    </Menu>--%>

                <%--  <Items>
                        <ext:Panel
                            runat="server"
                            Title="Navigation"
                            Border="false"
                            BodyPadding="6"
                            Icon="FolderGo"
                            Html="Hola" />

                        <ext:Panel
                            runat="server"
                            Title="Settings"
                            Border="false"
                            BodyPadding="6"
                            Icon="FolderWrench"
                            Html="Some settings in here" />
                    </Items>
                </ext:Panel>--%>
                <ext:TabPanel ID="TabPanel1" runat="server" Region="Center" />
            </Items>
        </ext:Viewport>


    </form>
</body>
</html>

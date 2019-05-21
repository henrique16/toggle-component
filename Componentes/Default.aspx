<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Componentes.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="Content/MyStyle.css" />
</head>
<body style="font-family: monospace; background-color: #f8f8f8">
    <form id="form1" runat="server">
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                <div class="global">
                    <div class="component">
                        <div id="titulo" class="titulo">
                            <asp:Label Text="LEGAL" runat="server" />
                            <i id="btnClose" class="btnToggle fas fa-chevron-up"></i>
                        </div>
                        <div id="border" class="content">
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div id="nota" class="component" style="margin-top: 15px">
                        <div id="titulo1" class="titulo">
                            <asp:Label Text="BOM" runat="server" />
                            <i id="btn" class="btnToggle fas fa-chevron-up"></i>
                        </div>
                        <div id="border1" class="content">
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                            <div class="div-row">
                                <div class="div-col">
                                    <input type="text" name="name" value="" />
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="component">
                        <div class="div-border" style="border: none;">
                            <asp:LinkButton Text="PostBack" runat="server" />
                        </div>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <script src="Scripts/ComponentToggle.js"></script> 
    </form>
</body>
</html>

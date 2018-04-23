<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <!--region #Markup-->        
        <dx:ASPxDataView runat="server" ID="DataView" DataSourceID="DataSource">
            <SettingsTableLayout ColumnCount="2" RowsPerPage="2" />
            <ItemTemplate>
                <table>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelText" runat="server" Text='<%# Eval("Text") %>' Font-Bold="true" />
                        </td>
                        <td>
                            <dx:ASPxImage ID="Image" runat="server" ImageUrl='<%# Eval("ImageUrl") %>' ShowLoadingImage="true" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <dx:ASPxLabel ID="LabelDescription" runat="server" Text='<%# Eval("Description") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </dx:ASPxDataView>

        <asp:XmlDataSource runat="server" ID="DataSource" DataFile="~/App_Data/Charts.xml"></asp:XmlDataSource>
        <!--endregion #Markup-->
    </form>
</body>
</html>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="CMS_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Enabled="False" Text="in" />
                    <asp:Button ID="Button2" runat="server" Text="Login" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>

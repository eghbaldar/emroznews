<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CMS.aspx.vb" Inherits="CMS_CMS" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family: Tahoma;
            font-size: 11px;
        }
        .style2
        {
            width: 100%;
        }
        .style3
        {
            width: 88px;
        }
        .style4
        {
            width: 330px;
        }
        .style5
        {
            width: 317px;
        }
        .style6
        {
            width: 286px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction:rtl;">
        <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td class="style3">
                                &nbsp;</td>
                            <td>
                                <asp:Button ID="Button2" runat="server" 
                                    style="font-family: Tahoma; font-size: 11px" Text="خبـــــــــــر" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                آمار کل سایت :</td>
                            <td>
                                <asp:Label ID="lblCountALL" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                آمار امروز:</td>
                            <td>
                                <asp:Label ID="lblCountToday" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                آمار با تاریخ:</td>
                            <td>
                                <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="بگرد" />
                                <asp:Label ID="lblVisitByDate" runat="server"></asp:Label>
                                <asp:Label ID="nemone" runat="server" style="color: #666666"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td class="style4">
                                آمار دقیق امروز</td>
                            <td class="style5">
                                آماز کل</td>
                            <td class="style6">
                                آمار تفکیک شده</td>
                            <td>
                                متن چرخشی</td>
                        </tr>
                        <tr>
                            <td class="style4">
                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="ObjectDataSource1" ForeColor="#333333" 
                                    GridLines="None" style="font-size: 13px">
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
                                    </Columns>
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#999999" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                </asp:GridView>
                            </td>
                            <td class="style5">
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                                    SelectMethod="GetData" 
                                    TypeName="DS_CMSTableAdapters.tbl_Amar_Site_allTableAdapter">
                                    <InsertParameters>
                                        <asp:Parameter Name="_Date" Type="String" />
                                        <asp:Parameter Name="IP" Type="String" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="ObjectDataSource2" 
                                    ForeColor="#333333" GridLines="None" PageSize="25" style="font-size: 13px">
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#EFF3FB" />
                                    <Columns>
                                        <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                            ReadOnly="True" SortExpression="ID" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                        <asp:BoundField DataField="IP" HeaderText="IP" SortExpression="IP" />
                                    </Columns>
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#2461BF" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                            </td>
                            <td class="style6">
                                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                                    CellPadding="4" DataSourceID="ObjectDataSource3" ForeColor="#333333" 
                                    GridLines="None" style="font-size: 13px">
                                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#E3EAEB" />
                                    <Columns>
                                        <asp:BoundField DataField="Column1" HeaderText="Column1" ReadOnly="True" 
                                            SortExpression="Column1" />
                                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                                    </Columns>
                                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                                    <EditRowStyle BackColor="#7C6F57" />
                                    <AlternatingRowStyle BackColor="White" />
                                </asp:GridView>
                                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" 
                                    OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" 
                                    TypeName="DS_CMSTableAdapters.tbl_Amar_Site_TafkikTableAdapter">
                                </asp:ObjectDataSource>
                            </td>
                            <td>
                                <table class="style2">
                                    <tr>
                                        <td>
                                            <table class="style2">
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="Button3" runat="server" 
                                                            style="font-family: Tahoma; font-size: 11px" Text="درج" />
                                                        <asp:TextBox ID="txtText" runat="server" Width="300px"></asp:TextBox>
                                                        <br />
                                                        <asp:RadioButton ID="visible" runat="server" Checked="True" Text="ظاهر" />
                                                        <asp:RadioButton ID="invisible" runat="server" Text="مخفی" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
                                                BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                                                CellPadding="3" DataKeyNames="ID" DataSourceID="SqlDataSource2" 
                                                style="font-size: 13px">
                                                <FooterStyle BackColor="White" ForeColor="#000066" />
                                                <RowStyle ForeColor="#000066" />
                                                <Columns>
                                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" 
                                                        ReadOnly="True" SortExpression="ID" />
                                                    <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                                                    <asp:CheckBoxField DataField="flag" HeaderText="flag" SortExpression="flag" />
                                                </Columns>
                                                <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                                                <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                                                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                                            </asp:GridView>
                                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                                ConnectionString="<%$ ConnectionStrings:emroznewsConnectionString %>" 
                                                DeleteCommand="DELETE FROM tbl_text_moving WHERE (ID = @id)" 
                                                SelectCommand="SELECT * FROM [tbl_text_moving]" 
                                                UpdateCommand="UPDATE tbl_text_moving SET flag = @flag, Text = @text WHERE (ID = @id)">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="id" />
                                                </DeleteParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="flag" />
                                                    <asp:Parameter Name="text" />
                                                    <asp:Parameter Name="id" />
                                                </UpdateParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                            <td class="style5">
                                &nbsp;</td>
                            <td class="style6">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" 
                        SelectMethod="GetData" TypeName="DS_CMSTableAdapters.tbl_Amar_SiteTableAdapter">
                        <SelectParameters>
                            <asp:Parameter Name="_date" Type="String" />
                        </SelectParameters>
                        <InsertParameters>
                            <asp:Parameter Name="_Date" Type="String" />
                            <asp:Parameter Name="IP" Type="String" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    مدیریت کاربران</td>
            </tr>
            <tr>
                <td>
                    <asp:GridView ID="GridView4" runat="server" AllowPaging="True" 
                        AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                        DataKeyNames="codeUser" DataSourceID="SqlDataSource1" GridLines="Horizontal" 
                        PageSize="20" style="font-size: 13px">
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="codeUser" HeaderText="codeUser" 
                                InsertVisible="False" ReadOnly="True" SortExpression="codeUser" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                                SortExpression="Mobile" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                            <asp:BoundField DataField="password" HeaderText="password" 
                                SortExpression="password" />
                            <asp:BoundField DataField="website" HeaderText="website" 
                                SortExpression="website" />
                        </Columns>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <AlternatingRowStyle BackColor="#F7F7F7" />
                    </asp:GridView>
                    <asp:Label ID="lblCOuntUser" runat="server" style="font-size: 50pt"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:emroznewsConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_Users] order by codeuser desc" 
                        UpdateCommand="UPDATE tbl_Users SET Name = @name, password = @password, email = @email WHERE (codeUser = @codeuser)">
                        <UpdateParameters>
                            <asp:Parameter Name="name" />
                            <asp:Parameter Name="password" />
                            <asp:Parameter Name="email" />
                            <asp:Parameter Name="codeuser" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

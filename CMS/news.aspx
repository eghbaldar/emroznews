<%@ Page Language="VB" AutoEventWireup="false" CodeFile="news.aspx.vb" Inherits="CMS_news" %>

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
            width: 80px;
        }
        .style4
        {
            width: 63px;
        }
        .style5
        {
            width: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction: rtl;">
        <asp:Button ID="Button4" runat="server" 
            style="font-family: Tahoma; font-size: 11px" Text="بازگشت" />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <table class="style1">
            <tr>
                <td>
                    <table class="style2">
                        <tr>
                            <td class="style3">
                                خبرگزاری:
                            </td>
                            <td>
                                <asp:DropDownList ID="dr" runat="server" DataSourceID="ObjectDataSource2" DataTextField="Name"
                                    DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 16px" Width="200px">
                                </asp:DropDownList>
                                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" DeleteMethod="Delete"
                                    InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
                                    TypeName="DSTableAdapters.tbl_categoryTableAdapter" UpdateMethod="Update">
                                    <DeleteParameters>
                                        <asp:Parameter Name="Original_CodeCategory" Type="Int64" />
                                        <asp:Parameter Name="Original_default_pt" Type="Int32" />
                                    </DeleteParameters>
                                    <UpdateParameters>
                                        <asp:Parameter Name="NamePic" Type="String" />
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="SiteURL" Type="String" />
                                        <asp:Parameter Name="Logo" Type="String" />
                                        <asp:Parameter Name="Original_CodeCategory" Type="Int64" />
                                        <asp:Parameter Name="Original_default_pt" Type="Int32" />
                                    </UpdateParameters>
                                    <InsertParameters>
                                        <asp:Parameter Name="NamePic" Type="String" />
                                        <asp:Parameter Name="Name" Type="String" />
                                        <asp:Parameter Name="SiteURL" Type="String" />
                                        <asp:Parameter Name="Logo" Type="String" />
                                        <asp:Parameter Name="default_pt" Type="Int32" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                عنوان:
                            </td>
                            <td>
                                <asp:TextBox ID="txtTitle" runat="server" Height="67px" Style="font-family: Tahoma;
                                    font-size: 11px" TextMode="MultiLine" Width="502px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                لینک:
                            </td>
                            <td>
                                <asp:TextBox ID="txtLink" runat="server" Style="direction: ltr;" Width="500px">http://</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                خلاصه خبر:
                            </td>
                            <td>
                                <asp:TextBox ID="txtBrife" runat="server" Height="120px" Style="font-family: Tahoma;
                                    font-size: 11px" TextMode="MultiLine" Width="502px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                آدرس عکس:
                            </td>
                            <td>
                                <asp:TextBox ID="txtPic" runat="server" Style="direction: ltr;" Width="500px">http://</asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                تاریخ:
                            </td>
                            <td>
                                <asp:TextBox ID="txtDate" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                    Width="208px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                زمان:
                            </td>
                            <td>
                                <asp:TextBox ID="txtTime" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                <asp:Button ID="Button1" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                    Text="ثبت" />
                                <asp:Label ID="lblsabt" runat="server" style="color: #CC0066"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style3">
                                &nbsp;
                            </td>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            
                            
                            <table class="style2">
                                <tr>
                                    <td class="style4">
                                        حذف خبر:</td>
                                    <td class="style5">
                                        <asp:TextBox ID="txtD" runat="server"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" Text="Delete" />
                                    </td>
                                </tr>
                            </table>
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="ObjectDataSource2" DataTextField="Name" 
                                DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 16px" 
                                Width="200px">
                            </asp:DropDownList>
                            <br />
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC"
                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                CellPadding="4" CellSpacing="2"
                                DataSourceID="ObjectDataSource3" ForeColor="Black" Style="font-size: 13px" 
                                AllowPaging="True">
                                <FooterStyle BackColor="#CCCCCC" />
                                <RowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="codeNews" HeaderText="codeNews" InsertVisible="False"
                                        ReadOnly="True" SortExpression="codeNews" />
                                    <asp:BoundField DataField="codeCategory" HeaderText="codeCategory" SortExpression="codeCategory" />
                                    <asp:BoundField DataField="titile" HeaderText="titile" SortExpression="titile" />
                                    <asp:BoundField DataField="NewsURL" HeaderText="NewsURL" SortExpression="NewsURL" />
                                    <asp:BoundField DataField="BrifeNews" HeaderText="BrifeNews" SortExpression="BrifeNews" />
                                    <asp:BoundField DataField="PicURL" HeaderText="PicURL" SortExpression="PicURL" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                                    <asp:BoundField DataField="click" HeaderText="click" SortExpression="click" />
                                </Columns>
                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                            <asp:UpdateProgress ID="UpdateProgress1" runat="server" 
                                AssociatedUpdatePanelID="UpdatePanel1">
                                <ProgressTemplate>
                                    Loading ..
                                </ProgressTemplate>
                            </asp:UpdateProgress>
                            <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" InsertMethod="Insert"
                                OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="DS_CMSTableAdapters.tbl_news_checkTableAdapter">
                                <SelectParameters>
                                    <asp:Parameter Name="code" Type="Int64" />
                                </SelectParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="codeCategory" Type="Int64" />
                                    <asp:Parameter Name="titile" Type="String" />
                                    <asp:Parameter Name="NewsURL" Type="String" />
                                    <asp:Parameter Name="BrifeNews" Type="String" />
                                    <asp:Parameter Name="PicURL" Type="String" />
                                    <asp:Parameter Name="_Date" Type="String" />
                                    <asp:Parameter Name="time" Type="String" />
                                    <asp:Parameter Name="click" Type="Int64" />
                                </InsertParameters>
                            </asp:ObjectDataSource>
                        </ContentTemplate>
                        
                    </asp:UpdatePanel>
                    
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                    ویرایش خبر</td>
            </tr>
            <tr>
                <td>
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:emroznewsConnectionString %>" 
                        SelectCommand="SELECT * FROM [tbl_news] WHERE ([codeNews] = @codeNews)" 
                        UpdateCommand="UPDATE tbl_news SET titile = @titile, NewsURL = @NewsURL, BrifeNews = @BrifeNews, PicURL = @PicURL WHERE (codeNews = @codenews)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="txtCodeNewsEdit" Name="codeNews" 
                                PropertyName="Text" Type="Int64" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="titile" />
                            <asp:Parameter Name="NewsURL" />
                            <asp:Parameter Name="BrifeNews" />
                            <asp:Parameter Name="PicURL" />
                            <asp:Parameter Name="codenews" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
<asp:TextBox ID="txtCodeNewsEdit" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" 
                        style="font-family: Tahoma; font-size: 11px" Text="بیارش" />
                   <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
                        BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" 
                        CellPadding="2" DataSourceID="SqlDataSource1" ForeColor="Black" 
                        GridLines="None" style="font-size: 13px" DataKeyNames="codeNews">
                        <FooterStyle BackColor="Tan" />
                        <Columns>
                            <asp:CommandField ShowEditButton="True" />
                            <asp:BoundField DataField="codeNews" HeaderText="codeNews" 
                                InsertVisible="False" ReadOnly="True" SortExpression="codeNews" />
                            <asp:BoundField DataField="codeCategory" HeaderText="codeCategory" 
                                SortExpression="codeCategory" />
                            <asp:BoundField DataField="titile" HeaderText="titile" 
                                SortExpression="titile" />
                            <asp:BoundField DataField="NewsURL" HeaderText="NewsURL" 
                                SortExpression="NewsURL" />
                            <asp:BoundField DataField="BrifeNews" HeaderText="BrifeNews" 
                                SortExpression="BrifeNews" />
                            <asp:BoundField DataField="PicURL" HeaderText="PicURL" 
                                SortExpression="PicURL" />
                            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                            <asp:BoundField DataField="time" HeaderText="time" SortExpression="time" />
                            <asp:BoundField DataField="click" HeaderText="click" SortExpression="click" />
                        </Columns>
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                            HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                    </asp:GridView>
                    </ContentTemplate>
                    </asp:UpdatePanel>
                    <asp:UpdateProgress ID="UpdateProgress2" runat="server" 
                        AssociatedUpdatePanelID="UpdatePanel2">
                        <ProgressTemplate>
                            Loading . . .
                        </ProgressTemplate>
                    </asp:UpdateProgress>
                </td>
            </tr>
            <tr>
                <td>
&nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
                        InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData"
                        TypeName="DS_CMSTableAdapters.tbl_categoryTableAdapter" UpdateMethod="Update">
                        <DeleteParameters>
                            <asp:Parameter Name="Original_CodeCategory" Type="Int64" />
                        </DeleteParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NamePic" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="SiteURL" Type="String" />
                            <asp:Parameter Name="Logo" Type="String" />
                            <asp:Parameter Name="default_pt" Type="Int32" />
                            <asp:Parameter Name="Original_CodeCategory" Type="Int64" />
                        </UpdateParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NamePic" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="SiteURL" Type="String" />
                            <asp:Parameter Name="Logo" Type="String" />
                            <asp:Parameter Name="default_pt" Type="Int32" />
                        </InsertParameters>
                    </asp:ObjectDataSource>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataKeyNames="CodeCategory" DataSourceID="ObjectDataSource1" ForeColor="#333333"
                        GridLines="None" Style="font-size: 14px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="CodeCategory" HeaderText="CodeCategory" InsertVisible="False"
                                ReadOnly="True" SortExpression="CodeCategory" />
                            <asp:BoundField DataField="NamePic" HeaderText="NamePic" SortExpression="NamePic" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="SiteURL" HeaderText="SiteURL" SortExpression="SiteURL" />
                            <asp:BoundField DataField="Logo" HeaderText="Logo" SortExpression="Logo" />
                            <asp:BoundField DataField="default_pt" HeaderText="default_pt" SortExpression="default_pt" />
                        </Columns>
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>

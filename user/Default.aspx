<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="user_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>امروزنیوز ::: اولین وبسایت جامع خبرهای خبرگزاری های ایرانی </title>

    <script type="text/javascript" src="../drog/js/jquery-1.3.2.js"></script>

    <link rel="stylesheet" href="../style.css" type="text/css" media="screen" />
    <!-- Talk -->
    <link href="../Talk/jquery.tooltip.css" rel="stylesheet" type="text/css" />
    <!-- Drag -->

    <script type="text/javascript" src="../drog/js/jquery-ui-1.7.2.custom.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../drog/styles.css" />

    <script type="text/javascript">
$(function(){
	$('.dragbox')
	.each(function(){
		$(this).hover(function(){
			$(this).find('h2').addClass('collapse');
		}, function(){
			$(this).find('h2').removeClass('collapse');
		})
		.find('h2').hover(function(){
			$(this).find('.configure').css('visibility', 'visible');
		}, function(){
			$(this).find('.configure').css('visibility', 'hidden');
		})
		.click(function(){
			$(this).siblings('.dragbox-content').toggle();
		})
		.end()
		.find('.configure').css('visibility', 'hidden');
	});
	$('.column').sortable({
		connectWith: '.column',
		handle: 'h2',
		cursor: 'move',
		placeholder: 'placeholder',
		forcePlaceholderSize: true,
		opacity: 0.4,
		stop: function(event, ui){
			$(ui.item).find('h2').click();
			var sortorder='';
			$('.column').each(function(){
				var itemorder=$(this).sortable('toArray');
				var columnId=$(this).attr('id');
				sortorder+=columnId+'='+itemorder.toString()+'&';
			});
		}
	})
	.disableSelection();
});
    </script>

    <!-- NEWS -->
    <link rel="stylesheet" href="../newsT/style.css" type="text/css" media="screen" />

    <script src="../newsT/jcarousellite_1.0.1c4.js" type="text/javascript"></script>

    <script type="text/javascript">
$(function() {
	$(".newsticker-jcarousellite").jCarouselLite({
		vertical: true,
		hoverPause:true,
		visible: 3,
		auto:500,
		speed:1000
	});
});
    </script>

    <!-- -->
    <!-- Module popup  -->

    <script type="text/javascript">

function Modal(str){

		//e.preventDefault();
		//Get the A tag
		var id = '#'+str ;
	
		//Get the screen height and width
		var maskHeight = $(document).height();
		var maskWidth = $(window).width();
	
		//Set heigth and width to mask to fill up the whole screen
		$('#mask').css({'width':maskWidth,'height':maskHeight});
		
		//transition effect		
		$('#mask').fadeIn(1000);	
		$('#mask').fadeTo("slow",0.8);	
	
		//Get the window height and width
		var winH = $(window).height();
		var winW = $(window).width();
              
		//Set the popup window to center
		$(id).css('top',  winH/2-$(id).height()/2);
		$(id).css('left', winW/2-$(id).width()/2);
	
		//transition effect
		$(id).fadeIn(2000); 
	

	//if close button is clicked
	$('.window .close').click(function (e) {
		//Cancel the link behavior
		e.preventDefault();
		
		$('#mask').hide();
		$('.window').hide();
	});		
	
	//if mask is clicked
	$('#mask').click(function () {
		$(this).hide();
		$('.window').hide();
	});			

}



    </script>

    <style type="text/css">
        #mask
        {
            position: absolute;
            left: 0;
            top: 0;
            z-index: 9000;
            background-color: #7a7a7a;
            display: none;
        }
        #boxes .window
        {
            position: absolute;
            left: 0;
            top: 0;
            width: 440px;
            height: 200px;
            display: none;
            z-index: 9999;
            padding: 20px;
        }
        #boxes #dialog
        {
            width: 375px;
            height: 203px;
            padding: 10px;
            background-color: #ffffff;
        }
        #boxes #dialog1
        {
            width: 375px;
            height: 203px;
        }
        #dialog1 .d-header
        {
            background: url(images/login-header.png) no-repeat 0 0 transparent;
            width: 375px;
            height: 150px;
        }
        #dialog1 .d-header input
        {
            position: relative;
            top: 60px;
            left: 100px;
            border: 3px solid #cccccc;
            height: 22px;
            width: 200px;
            font-size: 15px;
            padding: 5px;
            margin-top: 4px;
        }
        #dialog1 .d-blank
        {
            float: left;
            background: url(images/login-blank.png) no-repeat 0 0 transparent;
            width: 267px;
            height: 53px;
        }
        #dialog1 .d-login
        {
            float: left;
            width: 108px;
            height: 53px;
        }
        #boxes #dialog2
        {
            background: url(images/notice.png) no-repeat 0 0 transparent;
            width: 326px;
            height: 229px;
            padding: 50px 0 20px 25px;
        }
        .style5
        {
            width: 100%;
            height: 713px;
        }
        .ss
        {
            border: 3px solid #0071f2;
            background-color: #e3e3e3;
            width: 400px;
            height: 150px;
            -moz-border-radius: 5px;
            text-align: center;
        }
        .style6
        {
            width: 100%;
        }
    </style>

    <script type="text/javascript">
        function Hidden()
        {
            document.getElementById('boxes').sytle.display='none';
        }
    </script>

    <!-- End -->
</head>
<body>
    <form id="form1" runat="server">
    <div id="body">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <div id="topHeader">
            <div id="emrozLogo">
                <a href="http://www.emroznews.ir">
                    <img src="../images/emrozLogo.jpg" border="none" /></a>
            </div>
            <div id="detailLogo">
                <img src="../images/detailLogo.jpg" /></div>
            <div id="date">
                <img src="../images/Date.jpg" /></div>
        </div>
        <div id="flash">
            <object data="../flash/loadingNews.swf" width="990px" height="140px">
        </div>
        <div id="Master">
            <div id="Master_Right">
                <div>
                    <asp:ImageButton ID="btnBack" runat="server" ImageUrl="~/images/back.jpg" />
                </div>
                <div>
                    <object data="../flash/tab_1.swf" width="168px" height="81px">
                    </object>
                </div>
                <div>
                    <object data="../flash/tab_1.swf" width="168px" height="81px">
                    </object>
                </div>
                <div>
                    <object data="../flash/tab_1.swf" width="168px" height="81px">
                    </object>
                </div>
            </div>
            <div id="Master_Left">
                <div id="MasterLeft_Top">
                    <div id="newsticker-demo">
                        <div class="newsticker-jcarousellite">
                            <ul>
                                <asp:DataList ID="DataList1" runat="server" DataSourceID="ODS_TextMoving">
                                    <ItemTemplate>
                                        <li>
                                            <div class="info">
                                                <asp:Label ID="TextLabel" style="color:#ff5a00;" runat="server" Text='<%# Eval("Text") %>' />
                                            </div>
                                            <div class="clear">
                                            </div>
                                        </li>
                                    </ItemTemplate>
                                </asp:DataList>
                                <asp:ObjectDataSource ID="ODS_TextMoving" runat="server" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}"
                                    SelectMethod="GetData" TypeName="DSTableAdapters.tbl_text_movingTableAdapter">
                                    <InsertParameters>
                                        <asp:Parameter Name="Text" Type="String" />
                                        <asp:Parameter Name="flag" Type="Boolean" />
                                    </InsertParameters>
                                </asp:ObjectDataSource>
                            </ul>
                        </div>
                    </div>
                </div>
                <div id="MasterLeft_Down">
                    <table class="style5">
                        <tr>
                            <td style="color: White; font-family: Tahoma; font-size: 11px;">
                                تعیین اولویت خبرگزاری ها
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <table class="style5">
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/2.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr2" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt13" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    &nbsp;
                                                                    <asp:Image ID="img2" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/1.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt14" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img1" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress2" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/4.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr4" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt12" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img4" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress3" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/3.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr3" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt15" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
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
                                                                <td>
                                                                    <asp:Image ID="img3" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress4" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                                <br />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/6.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr6" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt11" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img6" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress5" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/5.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr5" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt16" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img5" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress6" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/8.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr8" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt18" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    &nbsp;
                                                                    <asp:Image ID="img8" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress7" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/7.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr7" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt17" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img7" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress8" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel9" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/10.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr10" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt9" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img10" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress9" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel10" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/9.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr9" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt10" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img9" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress10" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel11" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/12.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr12" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt8" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img12" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress11" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel12" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/11.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr11" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt7" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img11" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress12" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel13" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/14.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr14" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt5" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource13" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img14" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress13" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel14" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/13.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr13" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt6" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource14" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img13" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress14" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel15" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/16.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr16" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt3" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource15" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img16" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress15" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel16" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/15.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr15" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt4" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img15" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress16" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel17" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/18.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr18" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt2" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img18" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress17" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel18" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/17.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr17" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt1" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource18" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    &nbsp;
                                                                    <asp:Image ID="img17" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress18" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel19" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/20.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr20" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource19" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img20" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress19" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="ss">
                                                <asp:UpdatePanel ID="UpdatePanel20" runat="server">
                                                    <ContentTemplate>
                                                        <table class="style6">
                                                            <tr>
                                                                <td>
                                                                    <img src="../images/19.png" />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>
                                                                    <asp:DropDownList ID="dr19" runat="server" DataSourceID="ObjectDataSource1" DataTextField="Name"
                                                                        DataValueField="CodeCategory" Style="font-family: Tahoma; font-size: 12px" Width="250px"
                                                                        AutoPostBack="True">
                                                                    </asp:DropDownList>
                                                                    <asp:Button ID="btnSabt0" runat="server" Style="font-family: Tahoma; font-size: 11px"
                                                                        Text="ثبت تغییرات" />
                                                                    <asp:ObjectDataSource ID="ObjectDataSource20" runat="server" DeleteMethod="Delete"
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
                                                                <td>
                                                                    <asp:Image ID="img19" runat="server" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:UpdateProgress ID="UpdateProgress20" runat="server">
                                                            <ProgressTemplate>
                                                                <img src="../images/Loading_0.gif" />
                                                            </ProgressTemplate>
                                                        </asp:UpdateProgress>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div id="footer">
            <div style="margin-top: 15px;">
                <a href="http://www.emroznews.ir">
                    <img src="../images/footer_Logo_emroz.jpg" border="none" /></a>
            </div>
            <div style="margin-top: 2px;">
                <img src="../images/footer_detail_logo.jpg" border="none" /></div>
            <div style="margin-right: 110px; margin-top: 7px;">
                <div class="s">
                    صفحه نخست</div>
                <div class="s" style="background-color: #232323; color: white;">
                    تبلیغات</div>
                <div class="s">
                    آرشیو</div>
                <div class="s">
                    جستجو</div>
                <div class="s">
                    نسخه موبایل</div>
                <div class="s">
                    درباره ما</div>
                <div class="s">
                    تماس با ما</div>
                <div class="s">
                    RSS</div>
            </div>
        </div>
    </div>
    </form>

</body>
</html>

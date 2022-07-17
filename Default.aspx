<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>امروزنیوز ::: اولین وبسایت جامع خبرهای خبرگزاری های ایرانی </title>

    <script type="text/javascript" src="drog/js/jquery-1.3.2.js"></script>

    <link rel="stylesheet" href="style.css" type="text/css" media="screen" />
    <!-- Talk -->
    <link href="Talk/jquery.tooltip.css" rel="stylesheet" type="text/css" />
    <!-- Drag -->

    <script type="text/javascript" src="drog/js/jquery-ui-1.7.2.custom.min.js"></script>

    <link rel="stylesheet" type="text/css" href="drog/styles.css" />

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
    <link rel="stylesheet" href="newsT/style.css" type="text/css" media="screen" />

    <script src="newsT/jcarousellite_1.0.1c4.js" type="text/javascript"></script>

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
    <style type="text/css">
        .style1
        {
            width: 100%;
            font-family: Tahoma;
            font-size: 11px;
        }
    </style>
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
        .style2
        {
            width: 117px;
        }
        .style3
        {
            width: 13px;
        }
        .style4
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
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <div id="boxes">
        <div id="dialog2" class="window">
            <div style="border: 5px solid #858585; background-color: #ccc; width: 310px; height: 180px;
                -moz-border-radius: 7px; margin-top: -100px; margin-right: 60px; padding: 2px;">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <table style="width: 100%; font-family: Tahoma; font-size: 11px;">
                            <tr>
                                <td style="width: 100px;">
                                    نام و نام خانوادگی:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtName" runat="server" Style="border: 2px solid #ccc; font-family: Tahoma;
                                        font-size: 11px; width: 200px;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    پست الکترونیکی:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server" Style="border: 2px solid #ccc; font-family: Tahoma;
                                        font-size: 11px; width: 200px;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    تلفن همراه:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtMobile" runat="server" Style="border: 2px solid #ccc; font-family: Tahoma;
                                        font-size: 11px; width: 200px;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    وب سایت:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtWeb" runat="server" Style="border: 2px solid #ccc; font-family: Tahoma;
                                        font-size: 11px; width: 200px;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    کلمه عبور:
                                </td>
                                <td>
                                    <asp:TextBox TextMode="Password" ID="txtPass" runat="server" Style="border: 2px solid #ccc;
                                        font-family: Tahoma; font-size: 11px; width: 200px;"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                            </tr>
                        </table>
                        <div>
                            <div style="float: right;">
                                <asp:ImageButton ID="btnSabt" OnClick="btnSabt_click" ImageUrl="~/images/sabt.jpg"
                                    runat="server" ValidationGroup="1" /></div>
                            <div style="float: right;">
                                <asp:UpdateProgress AssociatedUpdatePanelID="UpdatePanel1" ID="UpdateProgress1" runat="server">
                                    <ProgressTemplate>
                                        <img src="images/Loading_0.gif" />
                                    </ProgressTemplate>
                                </asp:UpdateProgress>
                            </div>
                            <div style="float: right;">
                                <asp:Label Style="font-family: Tahoma; font-size: 11px; color: Red;" runat="server"
                                    ID="lblReg"></asp:Label>
                                <asp:RegularExpressionValidator Style="font-family: Tahoma; font-size: 11px;" ID="RegularExpressionValidator1"
                                    runat="server" ErrorMessage="پست الکترونیکی را درست وارد کنید" ControlToValidate="txtEmail"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="1"></asp:RegularExpressionValidator>
                            </div>
                        </div>
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div style="float: right;">
                <ul style="font-size: 11px; font-family: Tahoma; margin-top: 20px; margin-right: 100px;">
                    <li>با عضویت در امروزنیوز از امکانات زیر استفاده کنید
                        <ul>
                            <li>مطلع شدن از اخبار های گذاشته شده</li>
                            <li>تعیین اولویت نمایش خبرگزاری ها</li>
                            <li>بروز شدن اطلاعات امروزنیوز</li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div id="mask">
    </div>
    <div id="body">
        <div id="topHeader">
            <div id="emrozLogo">
                <a href="http://www.emroznews.ir">
                    <img src="images/emrozLogo.jpg" border="none" /></a>
            </div>
            <div id="detailLogo">
                <img src="images/detailLogo.jpg" /></div>
            <div id="date">
                <img src="images/Date.jpg" /></div>
        </div>
        <div id="flash">
            <object data="flash/loadingNews.swf" width="990px" height="140px">
        </div>
        <div id="Master">
            <div id="Master_Right">
                <div style="border: 3px solid #ff5a00; -moz-border-radius: 5px; background-image: url('images/bgRegister.jpg');
                    height: 92px; background-repeat: repeat-x; font-family: Tahoma; font-size: 11px;">
                    <asp:MultiView ID="MultiView" runat="server" ActiveViewIndex="0">
                        <asp:View ID="V_Register" runat="server">
                            <table class="style1">
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtEmail_" Text="نام کاربری ..." onfocus="if(this.value=='نام کاربری ...'){this.value='';}"
                                            onblur="if(this.value==''){this.value='نام کاربری ...';}if(this.value=='نام کاربری ...')this.style.color='#999999';"
                                            onmousedown="this.style.color='#000000';" Style="border: 1px solid #ccc; font-family: Tahoma;
                                            font-size: 11px;" runat="server" Width="153px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="txtPass_" Text="کلمه عبور..." onfocus="if(this.value=='کلمه عبور...'){this.value='';}"
                                            onblur="if(this.value==''){this.value='کلمه عبور...';}if(this.value=='کلمه عبور...')this.style.color='#999999';"
                                            onmousedown="this.style.color='#000000';" Style="border: 1px solid #ccc; font-family: Tahoma;
                                            font-size: 11px;" runat="server" Width="153px" TextMode="Password"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                        <asp:ImageButton ID="btnEnter" OnClick="btnEnter_click" runat="server" ImageUrl="~/images/enter.jpg" />
                                        <asp:CheckBox ID="chkCookie" runat="server" Text="مرا به خاط بسپار" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;
                                        <asp:ImageButton ID="btnRegister" OnClick="btnReg_Click" runat="server" ImageUrl="~/images/register.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                        <asp:View ID="V_Login" runat="server">
                            <table class="style4">
                                <tr>
                                    <td>
                                        <asp:Label ID="lbluser" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="btnEnterCookie" runat="server" ImageUrl="~/images/enter.jpg" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:ImageButton ID="btnExit" runat="server" ImageUrl="~/images/exit.jpg" />
                                    </td>
                                </tr>
                            </table>
                        </asp:View>
                    </asp:MultiView>
                </div>
                <div style="border: 3px solid #0071f2; -moz-border-radius: 5px; background-image: url('images/bgRegister.jpg');
                    margin-top: 2px; height: 76px; background-repeat: repeat-x; font-family: Tahoma;
                    font-size: 11px; padding: 5px;">
                    <div>
                        <asp:Label ID="lblCountALL" runat="server" Text="Label"></asp:Label></div>
                    <div>
                        <asp:Label ID="lblCountToday" Style="font-weight: normal;" runat="server" Text="Label"></asp:Label></div>
                    <div>
                        <asp:Label ID="lblCountUser" Style="font-weight: normal;" runat="server" Text="Label"></asp:Label></div>
                    <div>
                        <asp:Label ID="lblCountNews" Style="font-weight: normal;" runat="server" Text="Label"></asp:Label></div>
                    <div>
                        <asp:Label ID="lblCOuunNewsToday" Style="font-weight: normal;" runat="server" Text="Label"></asp:Label></div>
                </div>
                <div>
                    <object data="flash/tab_1.swf" width="168px" height="81px">
                    </object>
                </div>
                <div>
                    <object data="flash/tab_1.swf" width="168px" height="81px">
                    </object>
                </div>
                <div>
                    <object data="flash/tab_1.swf" width="168px" height="81px">
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
                                                <asp:Label ID="TextLabel" Style="color: #e5e5e5;" runat="server" Text='<%# Eval("Text") %>' />
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
                    <div class="column" id="column1">
                        <div class="dragbox" id="item1">
                            <asp:DataList ID="DL1" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item2">
                            <asp:DataList ID="DL3" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item3">
                            <asp:DataList ID="DL5" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item4">
                            <asp:DataList ID="DL7" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item5">
                            <asp:DataList ID="DL9" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item6">
                            <asp:DataList ID="DL11" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item7">
                            <asp:DataList ID="DL13" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item8">
                            <asp:DataList ID="DL15" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item9">
                            <asp:DataList ID="DL17" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item10">
                            <asp:DataList ID="DL19" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                    <div class="column" id="column2">
                        <div class="dragbox" id="item1">
                            <asp:DataList ID="DL2" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item2">
                            <asp:DataList ID="DL4" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item3">
                            <asp:DataList ID="DL6" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item4">
                            <asp:DataList ID="DL8" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item5">
                            <asp:DataList ID="DL10" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item6">
                            <asp:DataList ID="DL12" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item7">
                            <asp:DataList ID="DL14" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item8">
                            <asp:DataList ID="DL16" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item9">
                            <asp:DataList ID="DL18" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                        <div class="dragbox" id="item10">
                            <asp:DataList ID="DL20" runat="server" DataKeyField="CodeCategory" Width="391px">
                                <ItemTemplate>
                                    <h2>
                                        <div>
                                            <div style="float: right; width: 200px;">
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl='<%# Eval("NamePic","~\Logo_Khabargozari\{0}") %>' />
                                            </div>
                                            <div style="float: right; width: 175px; text-align: left;">
                                                <asp:Label runat="server" Text='<%# CheckLink(DataBinder.Eval(container.DataItem,"siteurl"))%>'
                                                    ID="Label2"></asp:Label>
                                            </div>
                                        </div>
                                        <h2>
                                        </h2>
                                        <asp:Label ID="lblCode" runat="server" Text='<%# Eval("codecategory","{0}") %>' Visible="False"></asp:Label>
                                        <asp:Label ID="lblDate_" runat="server" Text='<%# setDate(DataBinder.Eval(container.DataItem,"codecategory")) %>'
                                            Visible="False"></asp:Label>
                                        <div class="dragbox-content">
                                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ODS_News"
                                                GridLines="None" ShowHeader="False" Width="376px" Height="16px">
                                                <Columns>
                                                    <asp:TemplateField HeaderText="click" SortExpression="click">
                                                        <EditItemTemplate>
                                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("click") %>'></asp:TextBox>
                                                        </EditItemTemplate>
                                                        <ItemTemplate>
                                                            <div id="container">
                                                                <a href="#" class="tt">
                                                                    <asp:Literal ID="Literal1" Text='<%# setTitle(DataBinder.Eval(container.DataItem,"titile"),DataBinder.Eval(container.DataItem,"click")) %>'
                                                                        runat="server">
                                                                    </asp:Literal>
                                                                    <span class="tooltip"><span class="top"></span><span class="middle">
                                                                        <asp:Literal ID="Literal2" Text='<%# setDetail(DataBinder.Eval(container.DataItem,"brifenews"),DataBinder.Eval(container.DataItem,"picurl"),DataBinder.Eval(container.DataItem,"newsurl")) %>'
                                                                            runat="server">
                                                                            
                                                                        </asp:Literal>
                                                                        <asp:ImageButton ImageUrl="~/images/showNews.png" CommandArgument='<%# Eval("newsurl","{0}") +"|" + Eval("codeNews","{0}") %>'
                                                                            OnCommand="ShowLink" ID="ImageButton3" runat="server" />
                                                                    </span><span class="bottom"></span></span></a>
                                                            </div>
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </asp:GridView>
                                            <asp:ObjectDataSource ID="ODS_News" runat="server" OldValuesParameterFormatString="original_{0}"
                                                SelectMethod="GetData" TypeName="DSTableAdapters.tbl_newsTableAdapter">
                                                <SelectParameters>
                                                    <asp:ControlParameter ControlID="lblCode" Name="codecate" PropertyName="Text" Type="Int64" />
                                                    <asp:ControlParameter ControlID="lblDate_" DefaultValue="" Name="_date" PropertyName="Text"
                                                        Type="String" />
                                                </SelectParameters>
                                            </asp:ObjectDataSource>
                                            <div>
                                                <asp:TextBox ID="TextBox3" Visible="false" Text="جستجو..." onfocus="if(this.value=='جستجو...'){this.value='';}"
                                                    Style="font-family: Tahoma; font-size: 11px; border: 1px solid #ccc; width: 375px;
                                                    -moz-border-radius: 3px; height: 17px;" onblur="if(this.value==''){this.value='جستجو...';}if(this.value=='جستجو...')this.style.color='#999999';"
                                                    onmousedown="this.style.color='#000000';" runat="server"></asp:TextBox>
                                            </div>
                                            <div>
                                                <table class="style1">
                                                    <tr>
                                                        <td class="style2">
                                                            <a style="text-decoration: none; color: #0d73ed;" href='<%# Eval("SiteURL","{0}") %>'
                                                                target="_blank">مشاهده سایت خبرگزاری</a>
                                                        </td>
                                                        <td class="style3">
                                                            ,
                                                        </td>
                                                        <td>
                                                            <asp:Label ID="Label3" runat="server" Text='<%# CountNews(DataBinder.Eval(Container.DataItem,"CodeCategory")) %>'>
                                                            </asp:Label>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </div>
                                        </div>
                                </ItemTemplate>
                            </asp:DataList>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <div style="margin-top: 15px;">
                <a href="http://www.emroznews.ir">
                    <img src="images/footer_Logo_emroz.jpg" border="none" /></a>
            </div>
            <div style="margin-top: 2px;">
                <img src="images/footer_detail_logo.jpg" border="none" /></div>
            <div style="margin-right: 110px; margin-top: 7px;">
                <div class="s">
                   <a href="Default.aspx" style="color:Black;text-decoration:none;"> صفحه نخست</a></div>
                <div class="s" style="background-color: #232323; color: white;">
                     <a href="ads.aspx" style="color:white;text-decoration:none;">تبلیغات</a></div>
                <div class="s">
                    آرشیو</div>
                <div class="s">
                    جستجو</div>
                <div class="s">
                    نسخه موبایل</div>
                <div class="s">
                    درباره ما</div>
                <div class="s">
                    <a href="Contact.aspx" style="color:Black;text-decoration:none;">تماس با ما</a></div>
                <div class="s">
                    RSS</div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

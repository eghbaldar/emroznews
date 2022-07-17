<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ads.aspx.vb" Inherits="ads" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .ss
        {
            border: 3px solid #0071f2;
            background-color: #e3e3e3;
            width: 400px;
            height: 150px;
            -moz-border-radius: 5px;
            text-align: center;
        }
        .style1
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
                </div>
                <div id="MasterLeft_Down">
                    <div style="direction: rtl; font-family: Tahoma; font-size: 13px; color: #e6e6e6;">
                        برای دریافت تعرفه تبلیغات با ایمیل زیر تماس حاصل فرمائید</div>
                    <div style="direction: ltr; font-family: Tahoma; font-size: 30px; color: #e6e6e6;">
                        Ads@EmrozNews.ir</div>
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
                    <a href="Default.aspx" style="color: Black; text-decoration: none;">صفحه نخست</a></div>
                <div class="s" style="background-color: #232323; color: white;">
                    <a href="ads.aspx" style="color: white; text-decoration: none;">تبلیغات</a></div>
                <div class="s">
                    آرشیو</div>
                <div class="s">
                    جستجو</div>
                <div class="s">
                    نسخه موبایل</div>
                <div class="s">
                    درباره ما</div>
                <div class="s">
                    <a href="Contact.aspx" style="color: Black; text-decoration: none;">تماس با ما</a></div>
                <div class="s">
                    RSS</div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>

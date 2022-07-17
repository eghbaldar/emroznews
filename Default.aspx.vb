Imports System.Data
Imports System.Data.SqlClient

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Sub btnReg_Click(ByVal Sender As Object, ByVal e As EventArgs)
        txtEmail.Text = ""
        txtEmail.Enabled = True
        txtMobile.Text = ""
        txtMobile.Enabled = True
        txtName.Text = ""
        txtName.Enabled = True
        txtPass.Text = ""
        txtPass.Enabled = True
        txtWeb.Text = ""
        txtWeb.Enabled = True
        lblReg.Text = ""
        Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "Modal('dialog2');", True) 'Run JQuery Function
    End Sub
    '
    Protected Sub btnSabt_click(ByVal Sender As Object, ByVal e As EventArgs)

        Try
            If txtEmail.Text <> "" And txtMobile.Text <> "" And txtName.Text <> "" And txtPass.Text <> "" And txtWeb.Text <> "" Then
                Dim dsPT As New DSTableAdapters.tbl_ptTableAdapter
                Dim ds As New DSTableAdapters.tbl_UsersTableAdapter
                Dim query As New DSTableAdapters.Query
                If query.checkDup(txtEmail.Text) > 0 Then
                    lblReg.Text = "این پست الکترونیکی قبلا ثبت شده است"
                    Exit Sub
                End If
                ds.InsertQuery(txtName.Text, txtMobile.Text, txtEmail.Text, txtPass.Text, txtEmail.Text)
                For i As Byte = 1 To 20
                    dsPT.InsertPT(query.getCodeUser(txtEmail.Text), i, i)
                Next
                txtEmail.Text = ""
                txtEmail.Enabled = False
                txtMobile.Text = ""
                txtMobile.Enabled = False
                txtName.Text = ""
                txtName.Enabled = False
                txtPass.Text = ""
                txtPass.Enabled = False
                txtWeb.Text = "'"
                txtWeb.Enabled = False
                lblReg.Text = "شما با موفقیت ثبت نام شدید لطفا از این قسمت " + vbCrLf + "خارج شوید و لاگین کنید"
            Else
                lblReg.Text = "تمام فیلد ها باید پر شوند."
            End If

        Catch ex As Exception

        End Try

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Try
            Dim dsCMS As New DS_CMSTableAdapters.tbl_Amar_SiteTableAdapter
            Dim dsCMS_Query As New DS_CMSTableAdapters.Query
            dsCMS.InsertQuery(ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate), Request.UserHostAddress)
            lblCountALL.Text = "<span style='font-size:12px;'>" + String.Format("کل بازدید ها: {0}", "<b>" + dsCMS_Query.CountAll.ToString() + "<b/>") + "</span>"
            Dim s As String = dsCMS_Query.COuntToday(ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate))
            lblCountToday.Text = "<span style='font-size:12px;'>" + String.Format("بازدید های امروز: {0}", "<b>" + s + "<b/>") + "</span>"

            lblCountNews.Text = "<span style='font-size:12px;'>" + String.Format("کل خبرهای سایت: {0}", "<b>" + dsCMS_Query.CountNews.ToString + "<b/>") + "</span>"
            lblCOuunNewsToday.Text = "<span style='font-size:12px;'>" + String.Format("خبرهای امروز: {0}", "<b>" + dsCMS_Query.CountNewsToday(ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)).ToString + "<b/>") + "</span>"
            lblCountUser.Text = "<span style='font-size:12px;'>" + String.Format("تعداد کاربران سایت: {0}", "<b>" + dsCMS_Query.COuntUser.ToString + "<b/>") + "</span>"

        Catch ex As Exception

        End Try
        Try
            If Request.Cookies("EmrozNewsDotir").Value.ToString() <> "" Then
                Session("email") = Request.Cookies("EmrozNewsDotir").Value
                Dim ds_user As New DSTableAdapters.tbl_UsersTableAdapter
                MultiView.ActiveViewIndex = 1
                lbluser.Text = String.Format(" خوش آمیدی !!<b>{0}</b>", ds_user.getName(Session("email")))
            End If
        Catch ex As Exception
        End Try
        Try
            If Not IsPostBack Then
                System.Threading.Thread.Sleep(1000)

                If Session("email") = "" Then
                    'ستون سمت چپ
                    FillNews_PT1()
                    FillNews_PT3()
                    FillNews_PT5()
                    FillNews_PT7()
                    FillNews_PT9()
                    FillNews_PT11()
                    FillNews_PT13()
                    FillNews_PT15()
                    FillNews_PT17()
                    FillNews_PT19()
                    'ستون سمت راست
                    FillNews_PT2()
                    FillNews_PT4()
                    FillNews_PT6()
                    FillNews_PT8()
                    FillNews_PT10()
                    FillNews_PT12()
                    FillNews_PT14()
                    FillNews_PT16()
                    FillNews_PT18()
                    FillNews_PT20()
                End If

                If Session("email") <> "" Then
                    FillNews_PT1_Login()
                    FillNews_PT3_Login()
                    FillNews_PT5_Login()
                    FillNews_PT7_Login()
                    FillNews_PT9_Login()
                    FillNews_PT11_Login()
                    FillNews_PT13_Login()
                    FillNews_PT15_Login()
                    FillNews_PT17_Login()
                    FillNews_PT19_Login()
                    '
                    FillNews_PT2_Login()
                    FillNews_PT4_Login()
                    FillNews_PT6_Login()
                    FillNews_PT8_Login()
                    FillNews_PT10_Login()
                    FillNews_PT12_Login()
                    FillNews_PT14_Login()
                    FillNews_PT16_Login()
                    FillNews_PT18_Login()
                    FillNews_PT20_Login()
                End If

            End If
        Catch ex As Exception
        End Try

    End Sub

    Public Function CountNews(ByVal CodeCategory As Object) As String
        Dim ds As New DSTableAdapters.Query
        Dim s As String = "<span style='color:#ff5a00;'>تعداد خبرهای امروز:</span>"
        Return String.Format(s + " {0}", "<b>" + ds.getCountNews(CodeCategory.ToString).ToString + "</b>")
    End Function
    '
    Public Function setTitle(ByVal titile As Object, ByVal click As Object) As String
        Return String.Format(titile.ToString + " <b>[{0}]<b/>", click.ToString)
    End Function
    '
    Public Function setDetail(ByVal brifenews As Object, ByVal picurl As Object, ByVal newsurl As Object) As String
        Return "<div ><div style='width:100px'>" + "<img src='" + picurl.ToString + "' style='width:100px;height:100px;'/>" + "</div><div style='width:190px'>" + brifenews.ToString + "<br/><br/>"

    End Function
    '
    Public Sub ShowLink(ByVal sender As Object, ByVal e As CommandEventArgs)

        Dim ds As New DSTableAdapters.Query
        Dim s() As String = e.CommandArgument.ToString.Split("|")
        ds.UpdateClick(s(1))
        Page.ClientScript.RegisterStartupScript(Me.GetType, "alert", "window.open('" + s(0) + "','_blank','width:400,height=200,left=0,top=0,screenX=0,screenY=100');", True)

    End Sub
    '
    Public Function CheckLink(ByVal siteurl As Object) As String
        Return "<span style='color:#8e8e8e;font-family:tahoma;font-size:11px;17px;'>" + siteurl.ToString.Substring(7, siteurl.ToString.Length - 7) + "</span>"
    End Function
    '--------------- ستون سمت چپ
    ' PT = 1
    Private Sub FillNews_PT1()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 1 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL1.DataSource = ds.Tables(0)
        DL1.DataBind()
        sqlcnn.Close()

    End Sub
    ' PT =3
    Private Sub FillNews_PT3()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 3 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL3.DataSource = ds.Tables(0)
        DL3.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =5
    Private Sub FillNews_PT5()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 5 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL5.DataSource = ds.Tables(0)
        DL5.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =7
    Private Sub FillNews_PT7()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 7 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL7.DataSource = ds.Tables(0)
        DL7.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =9
    Private Sub FillNews_PT9()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 9 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL9.DataSource = ds.Tables(0)
        DL9.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =11
    Private Sub FillNews_PT11()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 11 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL11.DataSource = ds.Tables(0)
        DL11.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =13
    Private Sub FillNews_PT13()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt =13 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL13.DataSource = ds.Tables(0)
        DL13.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =15
    Private Sub FillNews_PT15()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt =15 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL15.DataSource = ds.Tables(0)
        DL15.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =17
    Private Sub FillNews_PT17()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 17 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL17.DataSource = ds.Tables(0)
        DL17.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =19
    Private Sub FillNews_PT19()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 19 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL19.DataSource = ds.Tables(0)
        DL19.DataBind()
        sqlcnn.Close()

    End Sub


    '--------------- ستون سمت راست
    ' PT = 2
    Private Sub FillNews_PT2()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 2 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL2.DataSource = ds.Tables(0)
        DL2.DataBind()
        sqlcnn.Close()

    End Sub
    ' PT =4
    Private Sub FillNews_PT4()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 4 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL4.DataSource = ds.Tables(0)
        DL4.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =6
    Private Sub FillNews_PT6()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 6 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL6.DataSource = ds.Tables(0)
        DL6.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =8
    Private Sub FillNews_PT8()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 8 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL8.DataSource = ds.Tables(0)
        DL8.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =10
    Private Sub FillNews_PT10()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 10 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL10.DataSource = ds.Tables(0)
        DL10.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =12
    Private Sub FillNews_PT12()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 12 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL12.DataSource = ds.Tables(0)
        DL12.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =14
    Private Sub FillNews_PT14()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt =14 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL14.DataSource = ds.Tables(0)
        DL14.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =16
    Private Sub FillNews_PT16()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt =16 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL16.DataSource = ds.Tables(0)
        DL16.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =2
    Private Sub FillNews_PT18()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 18 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL18.DataSource = ds.Tables(0)
        DL18.DataBind()
        sqlcnn.Close()

    End Sub
    'PT =20
    Private Sub FillNews_PT20()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE default_pt = 20 "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL20.DataSource = ds.Tables(0)
        DL20.DataBind()
        sqlcnn.Close()

    End Sub

    Protected Sub btnEnterCookie_click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnEnterCookie.Click
        Response.Redirect("~\user\")
    End Sub

    Protected Sub btnEnter_click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnEnter.Click

        Try
            Dim ds_user As New DSTableAdapters.tbl_UsersTableAdapter
            Dim ds As New DSTableAdapters.Query

            If chkCookie.Checked Then
                If ds.CheckAuth(txtEmail_.Text, txtPass_.Text) > 0 Then
                    Dim c As New HttpCookie("EmrozNewsDotir", txtEmail_.Text)
                    c.Expires = DateTime.Now.AddYears(1)
                    Context.Response.Cookies.Add(c)

                    Session("email") = txtEmail_.Text
                    lbluser.Text = ds_user.getName(txtEmail_.Text)
                    Response.Redirect("~\user\")
                End If
            ElseIf Not chkCookie.Checked Then
                If ds.CheckAuth(txtEmail_.Text, txtPass_.Text) > 0 Then
                    Session("email") = txtEmail_.Text
                    lbluser.Text = ds_user.getName(txtEmail_.Text)
                    Response.Redirect("~\user\")
                End If
            End If
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btnExit_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnExit.Click
        Try
            Dim c As New HttpCookie("EmrozNewsDotir", Session("email"))
            c.Expires = DateTime.Now.AddYears(-1)
            Context.Response.Cookies.Add(c)
            Session("email") = ""
            MultiView.ActiveViewIndex = 0
        Catch ex As Exception

        End Try
    End Sub

    '--------------------------------------- LOGIN
    Private Sub FillNews_PT1_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 1)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL1.DataSource = ds.Tables(0)
        DL1.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT3_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 3)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL3.DataSource = ds.Tables(0)
        DL3.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT5_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 5)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL5.DataSource = ds.Tables(0)
        DL5.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT7_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 7)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL7.DataSource = ds.Tables(0)
        DL7.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT9_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 9)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL9.DataSource = ds.Tables(0)
        DL9.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT11_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 11)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL11.DataSource = ds.Tables(0)
        DL11.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT13_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 13)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL13.DataSource = ds.Tables(0)
        DL13.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT15_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 15)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL15.DataSource = ds.Tables(0)
        DL15.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT17_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 17)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL17.DataSource = ds.Tables(0)
        DL17.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT19_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 19)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL19.DataSource = ds.Tables(0)
        DL19.DataBind()
        sqlcnn.Close()

    End Sub

    ''

    Private Sub FillNews_PT2_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 2)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL2.DataSource = ds.Tables(0)
        DL2.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT4_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 4)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL4.DataSource = ds.Tables(0)
        DL4.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT6_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 6)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL6.DataSource = ds.Tables(0)
        DL6.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT8_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 8)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL8.DataSource = ds.Tables(0)
        DL8.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT10_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 10)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL10.DataSource = ds.Tables(0)
        DL10.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT12_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 12)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL12.DataSource = ds.Tables(0)
        DL12.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT14_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 14)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL14.DataSource = ds.Tables(0)
        DL14.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT16_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 16)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL16.DataSource = ds.Tables(0)
        DL16.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT18_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 18)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL18.DataSource = ds.Tables(0)
        DL18.DataBind()
        sqlcnn.Close()

    End Sub

    Private Sub FillNews_PT20_Login()

        Dim sqlcnn As New SqlConnection(ConfigurationManager.ConnectionStrings("emroznewsConnectionString").ConnectionString)
        Dim sqlcom As New SqlCommand
        Dim sqlda As New SqlDataAdapter
        Dim ds As New DataSet
        sqlcnn.Open()
        sqlcom.Connection = sqlcnn

        sqlcom.CommandText = "SELECT CodeCategory, NamePic, Name, SiteURL, Logo, default_pt FROM tbl_category  WHERE codecategory= (select top 1 [code_category] from tbl_pt where (code_users=(select top 1  codeuser from tbl_users where email='" + Session("email") + "') ) and (pt = 20)) "
        sqlda.SelectCommand = sqlcom
        sqlda.Fill(ds)
        DL20.DataSource = ds.Tables(0)
        DL20.DataBind()
        sqlcnn.Close()

    End Sub

    '----------------------
    Public Function setDate(ByVal CodeCategory As Object) As String
        Return ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)
    End Function

End Class

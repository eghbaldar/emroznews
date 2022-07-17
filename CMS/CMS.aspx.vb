
Partial Class CMS_CMS
    Inherits System.Web.UI.Page

    Dim dsQ As New DS_CMSTableAdapters.Query

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "مدیریت امروز نیوز"
        If Session("CMS") = "" Then
            Response.Redirect("~\CMS\")
        End If

        Dim dsCMS As New DS_CMSTableAdapters.tbl_Amar_SiteTableAdapter
        Dim dsCMS_Query As New DS_CMSTableAdapters.Query
        dsCMS.InsertQuery(ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate), Request.UserHostAddress)
        lblCountALL.Text = "<span style='font-size:12px;'>" + String.Format("کل بازدید ها: {0}", "<b>" + dsCMS_Query.CountAll.ToString() + "<b/>") + "</span>"
        Dim s As String = dsCMS_Query.COuntToday(ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate))
        lblCountToday.Text = "<span style='font-size:12px;'>" + String.Format("بازدید های امروز: {0}", "<b>" + s + "<b/>") + "</span>"
        lblCOuntUser.Text = dsCMS_Query.COuntUser

        nemone.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        lblVisitByDate.Text = dsQ.COuntToday(txtDate.Text.Trim)
    End Sub

    Protected Sub ObjectDataSource1_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs) Handles ObjectDataSource1.Selecting
        e.InputParameters("_date") = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("~\cms\news.aspx")
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim ds As New DS_CMSTableAdapters.tbl_text_movingTableAdapter
        Dim b As Boolean
        If Visible.Checked Then
            b = True
        End If
        If invisible.Checked Then
            b = False
        End If
        ds.InsertQuery(txtText.Text, b)
        GridView5.DataBind()
        txtText.Text = ""
    End Sub

End Class

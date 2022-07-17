
Partial Class CMS_news
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Title = "مدیریت امروز نیوز"
        If Session("CMS") = "" Then
            Response.Redirect("~\CMS\")
        End If

        txtDate.Text = ShamsiDate.Miladi2Shamsi(Now, ShamsiDate.ShowType.LongDate)
        txtTime.Text = Now.ToShortTimeString.Substring(0, Now.ToShortTimeString.Length - 2)

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim ds As New DS_CMSTableAdapters.tbl_newsTableAdapter
            ds.InsertQuery(dr.SelectedValue, txtTitle.Text, txtLink.Text, txtBrife.Text, txtPic.Text, txtDate.Text, txtTime.Text, 0)
            txtBrife.Text = ""
            txtDate.Text = ""
            txtLink.Text = ""
            txtPic.Text = ""
            txtTime.Text = ""
            txtTitle.Text = ""
            lblsabt.Text = "OK"
        Catch ex As Exception
            lblsabt.Text = "E R R O R"
        End Try
    End Sub

    Protected Sub ObjectDataSource3_Selecting(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.ObjectDataSourceSelectingEventArgs) Handles ObjectDataSource3.Selecting
        e.InputParameters("code") = Session("codeCAT")
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged

        Session("codeCAT") = DropDownList1.SelectedValue
        GridView2.DataBind()
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim ds As New DS_CMSTableAdapters.Query
        ds.DeleteQuery(txtD.Text)
        GridView2.DataBind()
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        GridView3.DataBind()
        GridView2.DataBind()
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button4.Click
        Response.Redirect("~\cms\cms.aspx")
    End Sub
End Class

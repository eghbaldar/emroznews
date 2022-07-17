
Partial Class CMS_Default
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim ds As New DS_CMSTableAdapters.CMS_UserTableAdapter
        ds.InsertQuery(txtUser.Text, System.Text.Encoding.UTF8.GetBytes(txtPass.Text))

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Try
            Dim ds As New DS_CMSTableAdapters.Query
            If ds.Auth(txtUser.Text, System.Text.Encoding.UTF8.GetBytes(txtPass.Text)) Then
                Session("CMS") = txtUser.Text
                Response.Redirect("~\cms\cms.aspx")
            End If
        Catch ex As Exception

        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Title = "مدیریت امروز نیوز"
    End Sub
End Class

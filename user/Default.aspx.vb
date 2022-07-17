
Partial Class user_Default
    Inherits System.Web.UI.Page

    Dim ds As New DSTableAdapters.Query

    Protected Sub btnBack_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnBack.Click
        Response.Redirect("http://www.emroznews.ir")
    End Sub

    Protected Sub dr1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr1.SelectedIndexChanged
        img1.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr1.SelectedValue)
    End Sub

    Protected Sub dr2_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr2.SelectedIndexChanged
        img2.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr2.SelectedValue)
    End Sub

    Protected Sub dr3_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr3.SelectedIndexChanged
        img3.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr3.SelectedValue)
    End Sub

    Protected Sub dr4_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr4.SelectedIndexChanged
        img4.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr4.SelectedValue)
    End Sub

    Protected Sub dr5_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr5.SelectedIndexChanged
        img5.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr5.SelectedValue)
    End Sub

    Protected Sub dr6_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr6.SelectedIndexChanged
        img6.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr6.SelectedValue)
    End Sub

    Protected Sub dr7_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr7.SelectedIndexChanged
        img7.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr7.SelectedValue)
    End Sub

    Protected Sub dr8_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr8.SelectedIndexChanged
        img8.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr8.SelectedValue)
    End Sub

    Protected Sub dr9_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr9.SelectedIndexChanged
        img9.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr9.SelectedValue)
    End Sub

    Protected Sub dr10_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr10.SelectedIndexChanged
        img10.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr10.SelectedValue)
    End Sub

    Protected Sub dr11_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr11.SelectedIndexChanged
        img11.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr11.SelectedValue)
    End Sub

    Protected Sub dr12_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr12.SelectedIndexChanged
        img12.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr12.SelectedValue)
    End Sub

    Protected Sub dr13_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr13.SelectedIndexChanged
        img13.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr13.SelectedValue)
    End Sub

    Protected Sub dr14_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr14.SelectedIndexChanged
        img14.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr14.SelectedValue)
    End Sub

    Protected Sub dr15_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr15.SelectedIndexChanged
        img15.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr15.SelectedValue)
    End Sub

    Protected Sub dr16_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr16.SelectedIndexChanged
        img16.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr16.SelectedValue)
    End Sub

    Protected Sub dr17_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr17.SelectedIndexChanged
        img17.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr17.SelectedValue)
    End Sub

    Protected Sub dr18_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr18.SelectedIndexChanged
        img18.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr18.SelectedValue)
    End Sub

    Protected Sub dr19_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr19.SelectedIndexChanged
        img19.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr19.SelectedValue)
    End Sub

    Protected Sub dr20_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dr20.SelectedIndexChanged
        img20.ImageUrl = "~\user\khabargozari\" + ds.getLogoCat(dr20.SelectedValue)
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("email") = "" Then
            Response.Redirect("http://www.emroznews.ir")
        End If
    End Sub

    Protected Sub btnSabt14_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSabt14.Click, btnSabt13.Click, btnSabt15.Click, btnSabt12.Click, btnSabt16.Click, btnSabt11.Click, btnSabt17.Click, btnSabt18.Click, btnSabt10.Click, btnSabt9.Click, btnSabt7.Click, btnSabt8.Click, btnSabt6.Click, btnSabt5.Click, btnSabt3.Click, btnSabt4.Click, btnSabt2.Click, btnSabt1.Click, btnSabt.Click, btnSabt0.Click

        Try
            Dim query As New DSTableAdapters.Query

            Dim Values(19) As String
            Values(0) = dr1.SelectedValue
            Values(1) = dr2.SelectedValue
            Values(2) = dr3.SelectedValue
            Values(3) = dr4.SelectedValue
            Values(4) = dr5.SelectedValue
            Values(5) = dr6.SelectedValue
            Values(6) = dr7.SelectedValue
            Values(7) = dr8.SelectedValue
            Values(8) = dr9.SelectedValue
            Values(9) = dr10.SelectedValue
            Values(10) = dr11.SelectedValue
            Values(11) = dr12.SelectedValue
            Values(12) = dr13.SelectedValue
            Values(13) = dr14.SelectedValue
            Values(14) = dr15.SelectedValue
            Values(15) = dr16.SelectedValue
            Values(16) = dr17.SelectedValue
            Values(17) = dr18.SelectedValue
            Values(18) = dr19.SelectedValue
            Values(19) = dr20.SelectedValue

            Dim b As Boolean = False
            For i As Byte = 0 To 19
                For j As Byte = 0 To 19
                    If i <> j Then
                        If Values(i) = Values(j) Then
                            b = True 'tekrari vodod darad
                            Exit For
                        End If
                    End If
                Next
            Next
            If b = True Then
                ScriptManager.RegisterStartupScript(Me, Me.GetType, "alert", "alert('خبرگزاری تکرار وجود دارد لطفا اصلاح کنید.');", True)
            End If
            If b = False Then

                query.UpdatePT(dr1.SelectedValue, query.getCodeUser(Session("email")), 1)
                query.UpdatePT(dr2.SelectedValue, query.getCodeUser(Session("email")), 2)
                query.UpdatePT(dr3.SelectedValue, query.getCodeUser(Session("email")), 3)
                query.UpdatePT(dr4.SelectedValue, query.getCodeUser(Session("email")), 4)
                query.UpdatePT(dr5.SelectedValue, query.getCodeUser(Session("email")), 5)
                query.UpdatePT(dr6.SelectedValue, query.getCodeUser(Session("email")), 6)
                query.UpdatePT(dr7.SelectedValue, query.getCodeUser(Session("email")), 7)
                query.UpdatePT(dr8.SelectedValue, query.getCodeUser(Session("email")), 8)
                query.UpdatePT(dr9.SelectedValue, query.getCodeUser(Session("email")), 9)
                query.UpdatePT(dr10.SelectedValue, query.getCodeUser(Session("email")), 10)
                query.UpdatePT(dr11.SelectedValue, query.getCodeUser(Session("email")), 11)
                query.UpdatePT(dr12.SelectedValue, query.getCodeUser(Session("email")), 12)
                query.UpdatePT(dr13.SelectedValue, query.getCodeUser(Session("email")), 13)
                query.UpdatePT(dr14.SelectedValue, query.getCodeUser(Session("email")), 14)
                query.UpdatePT(dr15.SelectedValue, query.getCodeUser(Session("email")), 15)
                query.UpdatePT(dr16.SelectedValue, query.getCodeUser(Session("email")), 16)
                query.UpdatePT(dr17.SelectedValue, query.getCodeUser(Session("email")), 17)
                query.UpdatePT(dr18.SelectedValue, query.getCodeUser(Session("email")), 18)
                query.UpdatePT(dr19.SelectedValue, query.getCodeUser(Session("email")), 19)
                query.UpdatePT(dr20.SelectedValue, query.getCodeUser(Session("email")), 20)


                ScriptManager.RegisterStartupScript(Me, Me.GetType, "alert", "alert('خبرگزاری های مورد نظر بدرستی در مکان های خود قرار گرفته اند.');", True)
            End If
        Catch ex As Exception

        End Try

    End Sub

End Class


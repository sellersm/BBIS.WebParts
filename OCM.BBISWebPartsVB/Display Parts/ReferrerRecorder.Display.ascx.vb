﻿Public Class ReferrerRecorder_Display
    Inherits BBNCExtensions.Parts.CustomPartDisplayBase

    Private c_Referrer As String = "REFERRER"

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
			If Session(c_Referrer) Is Nothing Then
				Session(c_Referrer) = If(Request.UrlReferrer Is Nothing, Nothing, Request.UrlReferrer.ToString)
			End If
		End If
		lblReferrer.Text = If(Session(c_Referrer) Is Nothing, String.Empty, Session(c_Referrer).ToString)
		lblReferrer.Visible = SavedPreferences.DisplayReferrer
    End Sub

#Region "BoilerPlate"
    Private _savedPreferences As ReferrerRecorderPreferences

    Private ReadOnly Property SavedPreferences() As ReferrerRecorderPreferences
        Get
            If _savedPreferences Is Nothing Then
                _savedPreferences = Content.GetContent(GetType(ReferrerRecorderPreferences))
                If _savedPreferences Is Nothing Then
                    _savedPreferences = New ReferrerRecorderPreferences
                End If
            End If
            Return _savedPreferences
        End Get
    End Property
#End Region

End Class
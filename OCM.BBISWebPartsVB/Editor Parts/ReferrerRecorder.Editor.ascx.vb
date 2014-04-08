Public Class ReferrerRecorder_Editor
    Inherits BBNCExtensions.Parts.CustomPartEditorBase

	Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
		If Not Page.IsPostBack Then
			Me.cbDisplayReferrer.Checked = SavedPreferences.DisplayReferrer
		End If
	End Sub

	Public Overrides Function OnSaveContent(Optional bDialogIsClosing As Boolean = True) As Boolean
		SavedPreferences.DisplayReferrer = Me.cbDisplayReferrer.Checked
		Content.SaveContent(SavedPreferences)

		Return True
	End Function

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
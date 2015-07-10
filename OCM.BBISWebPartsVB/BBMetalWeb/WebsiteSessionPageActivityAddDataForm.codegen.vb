Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI



Namespace OCM.BBISWebParts

	''' <summary>
	''' Provides WebApi access to the "Website Session Page Activity Add Data Form" catalog feature.  Used to lock a child on the website
	''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class [WebsiteSessionPageActivityAddDataForm]

		Private Sub New()
		End Sub

		Private Shared ReadOnly _specId As Guid = New Guid("bfe2c12e-b6c9-4d1a-8102-fcd6f18b8b17")

		''' <summary>
		''' The Spec ID value for the "Website Session Page Activity Add Data Form" AddForm
		''' </summary>
		Public Shared ReadOnly Property SpecId() As Guid
			Get
				Return _specId
			End Get
		End Property

		Public Shared Function CreateLoadRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest
			Return Blackbaud.AppFx.WebAPI.DataFormServices.CreateDataFormLoadRequest(provider, _specId)
		End Function

		''' <summary>
		''' Returns an instance of WebsiteSessionPageActivityAddDataFormData with default data form fields populated.
		''' </summary>
		''' <returns>An instance of WebsiteSessionPageActivityAddDataFormData with the form field properties that have defaults populated with those default values.</returns>
		''' <remarks>This function will make a web request to the AppFx WebService DataFormLoad method to obtain the default data form field values.</remarks>
		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal contextRecordId As String) As WebsiteSessionPageActivityAddDataFormData



			Dim request = CreateLoadRequest(provider)



			request.ContextRecordID = contextRecordId

			Return LoadData(provider, request)

		End Function

		''' <summary>
		''' Returns an instance of WebsiteSessionPageActivityAddDataFormData with default data form fields populated.
		''' </summary>
		''' <returns>An instance of WebsiteSessionPageActivityAddDataFormData with the form field properties that have defaults populated with those default values.</returns>
		''' <remarks>This function will make a web request to the AppFx WebService DataFormLoad method to obtain the default data form field values.</remarks>
		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest) As WebsiteSessionPageActivityAddDataFormData
			Return bbAppFxWebAPI.DataFormServices.GetFormData(Of WebsiteSessionPageActivityAddDataFormData)(provider, request)
		End Function

	End Class

#Region "Data Class"

	''' <summary>
	''' Represents the data form field values in the "Website Session Page Activity Add Data Form" data form.
	''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class WebsiteSessionPageActivityAddDataFormData
		Inherits bbAppFxWebAPI.AddFormData

#Region "Constructors"

		Public Sub New()
			MyBase.New()
		End Sub

		Friend Sub New(ByVal reply As bbAppFxWebAPI.ServiceProxy.DataFormLoadReply, ByVal request As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest)
			MyBase.New()
			If (reply IsNot Nothing) AndAlso (reply.DataFormItem IsNot Nothing) Then
				Me.SetValues(reply.DataFormItem)
			End If
		End Sub

		Public Sub New(ByVal dfi As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
			MyBase.New()
			Me.SetValues(dfi)
		End Sub

		Public Sub New(ByVal dataFormItemXml As String)
			MyBase.New()
			Me.SetValuesFromDataFormItem(dataFormItemXml)
		End Sub

#End Region

#Region "Form Field Properties"

		Private [_SESSIONID] As String
		''' <summary>
		''' Session ID
		''' </summary>
		Public Property [SESSIONID] As String
			Get
				Return Me.[_SESSIONID]
			End Get
			Set(ByVal value As String)
				Me.[_SESSIONID] = Value
			End Set
		End Property

		Private [_PAGEID] As Nullable(Of Integer) = 0
		''' <summary>
		''' Page ID
		''' </summary>
		Public Property [PAGEID] As Nullable(Of Integer)
			Get
				Return Me.[_PAGEID]
			End Get
			Set(ByVal value As Nullable(Of Integer))
				Me.[_PAGEID] = Value
			End Set
		End Property

		Private [_PAGEURL] As String
		''' <summary>
		''' Page URL
		''' </summary>
		Public Property [PAGEURL] As String
			Get
				Return Me.[_PAGEURL]
			End Get
			Set(ByVal value As String)
				Me.[_PAGEURL] = Value
			End Set
		End Property

		Private [_PAGENAME] As String
		''' <summary>
		''' Page Name
		''' </summary>
		Public Property [PAGENAME] As String
			Get
				Return Me.[_PAGENAME]
			End Get
			Set(ByVal value As String)
				Me.[_PAGENAME] = Value
			End Set
		End Property

		Private [_ACTUALURL] As String
		''' <summary>
		''' Actual URL
		''' </summary>
		Public Property [ACTUALURL] As String
			Get
				Return Me.[_ACTUALURL]
			End Get
			Set(ByVal value As String)
				Me.[_ACTUALURL] = Value
			End Set
		End Property



#End Region

		Public Overrides ReadOnly Property DataFormInstanceID() As System.Guid
			Get
				Return WebsiteSessionPageActivityAddDataForm.SpecId
			End Get
		End Property

		Public Overrides Function ToDataFormItem() As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem
			Return Me.BuildDataFormItemForSave()
		End Function

		Friend Sub SetValues(ByVal dfi As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)

			If dfi Is Nothing Then Exit Sub


			Dim value As Object = Nothing
			Dim dfiFieldValue As Blackbaud.AppFx.XmlTypes.DataForms.DataFormFieldValue = Nothing
			Dim stringFieldValue As String = Nothing

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("SESSIONID", stringFieldValue) Then
				Me.[SESSIONID] = stringFieldValue
			End If

			value = Nothing
			dfiFieldValue = Nothing
			If dfi.TryGetValue("PAGEID", dfiFieldValue) Then
				If dfiFieldValue IsNot Nothing Then
					value = dfiFieldValue.Value
					If (value IsNot Nothing) AndAlso (value IsNot System.DBNull.Value) Then
						If TypeOf value Is String Then
							Me.[PAGEID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToInt(value)

						Else
							Me.[PAGEID] = value
						End If
					End If

				End If

			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("PAGEURL", stringFieldValue) Then
				Me.[PAGEURL] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("PAGENAME", stringFieldValue) Then
				Me.[PAGENAME] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("ACTUALURL", stringFieldValue) Then
				Me.[ACTUALURL] = stringFieldValue
			End If



		End Sub

		Private Function BuildDataFormItemForSave() As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem

			Dim dfi As New Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem

			Dim value As Object = Nothing
			value = Me.[SESSIONID]
			dfi.SetValueIfNotNull("SESSIONID", value)
			value = Me.[PAGEID]
			dfi.SetValueIfNotNull("PAGEID", value)
			value = Me.[PAGEURL]
			dfi.SetValueIfNotNull("PAGEURL", value)
			value = Me.[PAGENAME]
			dfi.SetValueIfNotNull("PAGENAME", value)
			value = Me.[ACTUALURL]
			dfi.SetValueIfNotNull("ACTUALURL", value)


			Return dfi

		End Function

		Public Overrides Sub SetValuesFromDataFormItem(ByVal dataFormItem As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
			Me.SetValues(dataFormItem)
		End Sub



	End Class

#End Region

End Namespace


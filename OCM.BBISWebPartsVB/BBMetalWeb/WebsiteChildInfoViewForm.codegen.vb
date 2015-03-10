Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI


Namespace OCM.BBISWebParts


	''' <summary>
	''' Provides WebApi access to the "Website Child Info View Form" catalog feature.  Used to retrieve information for a single child from BBIS
	''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class [WebsiteChildInfoViewForm]

		Private Sub New()
		End Sub

		Private Shared ReadOnly _specId As Guid = New Guid("9860f33f-efeb-478b-a312-f7e1c3bd4244")

		''' <summary>
		''' The Spec ID value for the "Website Child Info View Form" ViewForm
		''' </summary>
		Public Shared ReadOnly Property SpecId() As Guid
			Get
				Return _specId
			End Get
		End Property

		Public Shared Function CreateRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest
			Return Blackbaud.AppFx.WebAPI.DataFormServices.CreateDataFormLoadRequest(provider, _specId)
		End Function

		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal recordId As String) As WebsiteChildInfoViewFormData

			bbAppFxWebAPI.DataFormServices.ValidateRecordId(recordId)

			Dim request = CreateRequest(provider)



			request.RecordID = recordId

			Return LoadData(provider, request)

		End Function

		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest) As WebsiteChildInfoViewFormData
			Return bbAppFxWebAPI.DataFormServices.GetFormData(Of WebsiteChildInfoViewFormData)(provider, request)
		End Function

	End Class

#Region "Data Class"

	''' <summary>
	''' Represents the data form field values in the "Website Child Info View Form" data form.
	''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class WebsiteChildInfoViewFormData
		Inherits bbAppFxWebAPI.ViewFormData

		Private [_CHILDLOOKUPID] As String
		''' <summary>
		''' Child Lookup ID
		''' </summary>
		Public Property [CHILDLOOKUPID] As String
			Get
				Return Me.[_CHILDLOOKUPID]
			End Get
			Set(ByVal value As String)
				Me.[_CHILDLOOKUPID] = Value
			End Set
		End Property

		Private [_CHILDNAME] As String
		''' <summary>
		''' Child Name
		''' </summary>
		Public Property [CHILDNAME] As String
			Get
				Return Me.[_CHILDNAME]
			End Get
			Set(ByVal value As String)
				Me.[_CHILDNAME] = Value
			End Set
		End Property

		Private [_AGE] As Nullable(Of Integer)
		''' <summary>
		''' Age
		''' </summary>
		Public Property [AGE] As Nullable(Of Integer)
			Get
				Return Me.[_AGE]
			End Get
			Set(ByVal value As Nullable(Of Integer))
				Me.[_AGE] = Value
			End Set
		End Property

		Private [_BIRTHDATE] As String
		''' <summary>
		''' Birthdate string
		''' </summary>
		Public Property [BIRTHDATE] As String
			Get
				Return Me.[_BIRTHDATE]
			End Get
			Set(ByVal value As String)
				Me.[_BIRTHDATE] = Value
			End Set
		End Property

		Private [_GENDER] As String
		''' <summary>
		''' Gender
		''' </summary>
		Public Property [GENDER] As String
			Get
				Return Me.[_GENDER]
			End Get
			Set(ByVal value As String)
				Me.[_GENDER] = Value
			End Set
		End Property

		Private [_PROJECTID] As Nullable(Of System.Guid)
		''' <summary>
		''' Project ID
		''' </summary>
		Public Property [PROJECTID] As Nullable(Of System.Guid)
			Get
				Return Me.[_PROJECTID]
			End Get
			Set(ByVal value As Nullable(Of System.Guid))
				Me.[_PROJECTID] = Value
			End Set
		End Property

		Private [_PROJECTLOOKUPID] As String
		''' <summary>
		''' Project Lookup ID
		''' </summary>
		Public Property [PROJECTLOOKUPID] As String
			Get
				Return Me.[_PROJECTLOOKUPID]
			End Get
			Set(ByVal value As String)
				Me.[_PROJECTLOOKUPID] = Value
			End Set
		End Property

		Private [_COUNTRYID] As Nullable(Of System.Guid)
		''' <summary>
		''' Country ID
		''' </summary>
		Public Property [COUNTRYID] As Nullable(Of System.Guid)
			Get
				Return Me.[_COUNTRYID]
			End Get
			Set(ByVal value As Nullable(Of System.Guid))
				Me.[_COUNTRYID] = Value
			End Set
		End Property

		Private [_COUNTRYNAME] As String
		''' <summary>
		''' Country Name
		''' </summary>
		Public Property [COUNTRYNAME] As String
			Get
				Return Me.[_COUNTRYNAME]
			End Get
			Set(ByVal value As String)
				Me.[_COUNTRYNAME] = Value
			End Set
		End Property

		Private [_ELIGIBILITY] As String
		''' <summary>
		''' Eligibility
		''' </summary>
		Public Property [ELIGIBILITY] As String
			Get
				Return Me.[_ELIGIBILITY]
			End Get
			Set(ByVal value As String)
				Me.[_ELIGIBILITY] = Value
			End Set
		End Property

		Private [_AVAILABILITY] As String
		''' <summary>
		''' Availability
		''' </summary>
		Public Property [AVAILABILITY] As String
			Get
				Return Me.[_AVAILABILITY]
			End Get
			Set(ByVal value As String)
				Me.[_AVAILABILITY] = Value
			End Set
		End Property



		Public Sub New()
			MyBase.New()
		End Sub

		Public Sub New(ByVal reply As bbAppFxWebAPI.ServiceProxy.DataFormLoadReply)
			If (reply IsNot Nothing) AndAlso (reply.DataFormItem IsNot Nothing) Then
				Me.SetValues(reply.DataFormItem)
			End If
		End Sub

		Public Sub New(ByVal dataFormItemXml As String)
			MyBase.New()
			Me.SetValuesFromDataFormItem(dataFormItemXml)
		End Sub

		Public Overrides ReadOnly Property DataFormInstanceID() As System.Guid
			Get
				Return WebsiteChildInfoViewForm.SpecId
			End Get
		End Property

		Friend Sub SetValues(ByVal dfi As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)


			Dim value As Object = Nothing
			Dim dfiFieldValue As Blackbaud.AppFx.XmlTypes.DataForms.DataFormFieldValue = Nothing
			Dim stringFieldValue As String = Nothing

			Dim guidFieldValue As System.Guid
			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("CHILDLOOKUPID", stringFieldValue) Then
				Me.[CHILDLOOKUPID] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("CHILDNAME", stringFieldValue) Then
				Me.[CHILDNAME] = stringFieldValue
			End If

			value = Nothing
			dfiFieldValue = Nothing
			If dfi.TryGetValue("AGE", dfiFieldValue) Then
				If dfiFieldValue IsNot Nothing Then
					value = dfiFieldValue.Value
					If (value IsNot Nothing) AndAlso (value IsNot System.DBNull.Value) Then
						If TypeOf value Is String Then
							Me.[AGE] = Blackbaud.AppFx.DataListUtility.DataListStringValueToInt(value)

						Else
							Me.[AGE] = value
						End If
					End If

				End If

			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("BIRTHDATE", stringFieldValue) Then
				Me.[BIRTHDATE] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("GENDER", stringFieldValue) Then
				Me.[GENDER] = stringFieldValue
			End If

			guidFieldValue = System.Guid.Empty
			If dfi.TryGetValueForPropertyAssignment("PROJECTID", guidFieldValue) Then
				Me.[PROJECTID] = guidFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("PROJECTLOOKUPID", stringFieldValue) Then
				Me.[PROJECTLOOKUPID] = stringFieldValue
			End If

			guidFieldValue = System.Guid.Empty
			If dfi.TryGetValueForPropertyAssignment("COUNTRYID", guidFieldValue) Then
				Me.[COUNTRYID] = guidFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("COUNTRYNAME", stringFieldValue) Then
				Me.[COUNTRYNAME] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("ELIGIBILITY", stringFieldValue) Then
				Me.[ELIGIBILITY] = stringFieldValue
			End If

			stringFieldValue = Nothing
			If dfi.TryGetValueForPropertyAssignment("AVAILABILITY", stringFieldValue) Then
				Me.[AVAILABILITY] = stringFieldValue
			End If



		End Sub

		Public Overrides Sub SetValuesFromDataFormItem(ByVal dataFormItem As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
			Me.SetValues(dataFormItem)
		End Sub



	End Class

#End Region


End Namespace




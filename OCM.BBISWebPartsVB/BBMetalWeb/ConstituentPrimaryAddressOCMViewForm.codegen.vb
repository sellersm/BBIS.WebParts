Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI



Namespace OCM.BBISWebParts


			''' <summary>
	''' Provides WebApi access to the "Constituent Primary Address OCM View Form" catalog feature.  Used for viewing a constituent's primary address.
	''' </summary>
<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
		Public NotInheritable Class [ConstituentPrimaryAddressOCMViewForm]

			Private Sub New()
			End Sub

			Private Shared ReadOnly _specId As Guid = New Guid("bb6e0c04-1a4a-4edd-9e4d-af719c63f30c")

			''' <summary>
			''' The Spec ID value for the "Constituent Primary Address OCM View Form" ViewForm
			''' </summary>
			Public Shared ReadOnly Property SpecId() As Guid
				Get
					Return _specId
				End Get
			End Property

			Public Shared Function CreateRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest
				Return Blackbaud.AppFx.WebAPI.DataFormServices.CreateDataFormLoadRequest(provider, _specId)
			End Function

			Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal recordId As String) As ConstituentPrimaryAddressOCMViewFormData

				bbAppFxWebAPI.DataFormServices.ValidateRecordId(recordId)

				Dim request = CreateRequest(provider)



				request.RecordID = recordId

				Return LoadData(provider, request)

			End Function

			Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest) As ConstituentPrimaryAddressOCMViewFormData
				Return bbAppFxWebAPI.DataFormServices.GetFormData(Of ConstituentPrimaryAddressOCMViewFormData)(provider, request)
			End Function

		End Class

#Region "Data Class"

		''' <summary>
		''' Represents the data form field values in the "Constituent Primary Address OCM View Form" data form.
		''' </summary>
		<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
		Public NotInheritable Class ConstituentPrimaryAddressOCMViewFormData
			Inherits bbAppFxWebAPI.ViewFormData

			Private [_HASADDRESS] As Nullable(Of Boolean)
''' <summary>
''' HASADDRESS
''' </summary>
Public Property [HASADDRESS] As Nullable(Of Boolean)
	Get
		Return Me.[_HASADDRESS]
	End Get
	Set(value As Nullable(Of Boolean))
		Me.[_HASADDRESS] = value
	End Set
End Property

Private [_POSTCODE] As String
''' <summary>
''' Postcode
''' </summary>
Public Property [POSTCODE] As String
	Get
		Return Me.[_POSTCODE]
	End Get
	Set(value As String)
		Me.[_POSTCODE] = value
	End Set
End Property

Private [_ADDRESSBLOCK] As String
''' <summary>
''' Address
''' </summary>
Public Property [ADDRESSBLOCK] As String
	Get
		Return Me.[_ADDRESSBLOCK]
	End Get
	Set(value As String)
		Me.[_ADDRESSBLOCK] = value
	End Set
End Property

Private [_CITY] As String
''' <summary>
''' City
''' </summary>
Public Property [CITY] As String
	Get
		Return Me.[_CITY]
	End Get
	Set(value As String)
		Me.[_CITY] = value
	End Set
End Property

Private [_STATEID] As Nullable(Of System.Guid)
''' <summary>
''' StateID
''' </summary>
Public Property [STATEID] As Nullable(Of System.Guid)
	Get
		Return Me.[_STATEID]
	End Get
	Set(value As Nullable(Of System.Guid))
		Me.[_STATEID] = value
	End Set
End Property

Private [_STATEABBREV] As String
''' <summary>
''' State Abbreviation
''' </summary>
Public Property [STATEABBREV] As String
	Get
		Return Me.[_STATEABBREV]
	End Get
	Set(value As String)
		Me.[_STATEABBREV] = value
	End Set
End Property

Private [_STATEDESC] As String
''' <summary>
''' State Description
''' </summary>
Public Property [STATEDESC] As String
	Get
		Return Me.[_STATEDESC]
	End Get
	Set(value As String)
		Me.[_STATEDESC] = value
	End Set
End Property

Private [_COUNTRYID] As Nullable(Of System.Guid)
''' <summary>
''' Country
''' </summary>
Public Property [COUNTRYID] As Nullable(Of System.Guid)
	Get
		Return Me.[_COUNTRYID]
	End Get
	Set(value As Nullable(Of System.Guid))
		Me.[_COUNTRYID] = value
	End Set
End Property

Private [_ISUSADDRESS] As Nullable(Of Boolean)
''' <summary>
''' ISUSADDRESS
''' </summary>
Public Property [ISUSADDRESS] As Nullable(Of Boolean)
	Get
		Return Me.[_ISUSADDRESS]
	End Get
	Set(value As Nullable(Of Boolean))
		Me.[_ISUSADDRESS] = value
	End Set
End Property

Private [_PHONENUMBER] As String
''' <summary>
''' Phone
''' </summary>
Public Property [PHONENUMBER] As String
	Get
		Return Me.[_PHONENUMBER]
	End Get
	Set(value As String)
		Me.[_PHONENUMBER] = value
	End Set
End Property

Private [_EMAILADDRESS] As String
''' <summary>
''' Email
''' </summary>
Public Property [EMAILADDRESS] As String
	Get
		Return Me.[_EMAILADDRESS]
	End Get
	Set(value As String)
		Me.[_EMAILADDRESS] = value
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
					Return OCM.BBISWebParts.ConstituentPrimaryAddressOCMViewForm.SpecId
				End Get
			End Property

			Friend Sub SetValues(ByVal dfi As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)


Dim value As Object = Nothing
Dim dfiFieldValue As Blackbaud.AppFx.XmlTypes.DataForms.DataFormFieldValue = Nothing
Dim stringFieldValue As String = Nothing

Dim guidFieldValue As System.Guid
Dim boolFieldValue As Boolean
boolFieldValue = False
If dfi.TryGetValueForPropertyAssignment("HASADDRESS", boolFieldValue) Then
Me.[HASADDRESS] = boolFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("POSTCODE", stringFieldValue) Then
Me.[POSTCODE] = stringFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("ADDRESSBLOCK", stringFieldValue) Then
Me.[ADDRESSBLOCK] = stringFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("CITY", stringFieldValue) Then
Me.[CITY] = stringFieldValue
End If

guidFieldValue = System.Guid.Empty
If dfi.TryGetValueForPropertyAssignment("STATEID", guidFieldValue) Then
Me.[STATEID] = guidFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("STATEABBREV", stringFieldValue) Then
Me.[STATEABBREV] = stringFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("STATEDESC", stringFieldValue) Then
Me.[STATEDESC] = stringFieldValue
End If

guidFieldValue = System.Guid.Empty
If dfi.TryGetValueForPropertyAssignment("COUNTRYID", guidFieldValue) Then
Me.[COUNTRYID] = guidFieldValue
End If

boolFieldValue = False
If dfi.TryGetValueForPropertyAssignment("ISUSADDRESS", boolFieldValue) Then
Me.[ISUSADDRESS] = boolFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("PHONENUMBER", stringFieldValue) Then
Me.[PHONENUMBER] = stringFieldValue
End If

stringFieldValue = Nothing
If dfi.TryGetValueForPropertyAssignment("EMAILADDRESS", stringFieldValue) Then
Me.[EMAILADDRESS] = stringFieldValue
End If



			End Sub

			Public Overrides Sub SetValuesFromDataFormItem(ByVal dataFormItem As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
				Me.SetValues(dataFormItem)
			End Sub



		End Class

#End Region

End Namespace

Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI



Namespace OCM.BBISWebParts


	''' <summary>
	''' Provides WebApi access to the "Website Child Lock Data List" catalog feature.  Used to determine if a child is locked on the website
	''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class [WebsiteChildLockDataList]

		Private Sub New()
			'this is a static class (only shared methods) that should never be instantiated.
		End Sub

		Private Shared ReadOnly _specId As Guid = New Guid("bb814254-7ff4-45db-afb6-7da3e4dd503b")
		''' <summary>
		''' The DataList ID value for the "Website Child Lock Data List" datalist
		''' </summary>
		Public Shared ReadOnly Property SpecId() As Guid
			Get
				Return _specId
			End Get
		End Property

		Private Shared ReadOnly _rowFactoryDelegate As Blackbaud.AppFx.WebAPI.DataListRowFactoryDelegate(Of [WebsiteChildLockDataListRow]) = AddressOf CreateListRow

		Private Shared Function CreateListRow(ByVal rowValues As String()) As [WebsiteChildLockDataListRow]
			Return New [WebsiteChildLockDataListRow](rowValues)
		End Function

		Public Shared Function CreateRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest
			Return Blackbaud.AppFx.WebAPI.DataListServices.CreateDataListLoadRequest(provider, [WebsiteChildLockDataList].SpecId)
		End Function

		Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal recordID As String, ByVal filter As WebsiteChildLockDataListFilterData) As WebsiteChildLockDataListRow()

			If String.IsNullOrEmpty(recordID) Then Throw New ArgumentException("recordID is required for this datalist.", "recordID")

			Dim request = CreateRequest(provider)

			request.ContextRecordID = recordID

			If filter IsNot Nothing Then request.Parameters = filter.BuildDataFormItemForFilter()

			Return GetRows(provider, request)

		End Function

		Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest) As WebsiteChildLockDataListRow()
			Return bbAppFxWebAPI.DataListServices.GetListRows(Of [WebsiteChildLockDataListRow])(provider, _rowFactoryDelegate, request)
		End Function

	End Class

#Region "Row Data Class"

	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	<System.Serializable()> _
	Public NotInheritable Class [WebsiteChildLockDataListRow]


		Private [_ID] As System.Guid
		Public Property [ID] As System.Guid
			Get
				Return Me.[_ID]
			End Get
			Set(ByVal value As System.Guid)
				Me.[_ID] = Value
			End Set
		End Property

		Private [_SPONSORSHIPOPPORTUNITYID] As System.Guid
		Public Property [SPONSORSHIPOPPORTUNITYID] As System.Guid
			Get
				Return Me.[_SPONSORSHIPOPPORTUNITYID]
			End Get
			Set(ByVal value As System.Guid)
				Me.[_SPONSORSHIPOPPORTUNITYID] = Value
			End Set
		End Property

		Private [_SESSIONID] As String
		Public Property [SESSIONID] As String
			Get
				Return Me.[_SESSIONID]
			End Get
			Set(ByVal value As String)
				Me.[_SESSIONID] = Value
			End Set
		End Property

		Private [_DATEADDED] As Nullable(Of Date)
		Public Property [DATEADDED] As Nullable(Of Date)
			Get
				Return Me.[_DATEADDED]
			End Get
			Set(ByVal value As Nullable(Of Date))
				Me.[_DATEADDED] = Value
			End Set
		End Property

		Private [_TIMEADDED] As Nullable(Of TimeSpan)
		Public Property [TIMEADDED] As Nullable(Of TimeSpan)
			Get
				Return Me.[_TIMEADDED]
			End Get
			Set(ByVal value As Nullable(Of TimeSpan))
				Me.[_TIMEADDED] = Value
			End Set
		End Property




		Public Sub New()
			MyBase.New()
		End Sub

		Friend Sub New(ByVal dataListRowValues() As String)

			Blackbaud.AppFx.WebAPI.DataListServices.ValidateDataListOutputColumnCount(4, dataListRowValues, WebsiteChildLockDataList.SpecId)

			Me.[_ID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToGuid(dataListRowValues(0))

			Me.[_SPONSORSHIPOPPORTUNITYID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToGuid(dataListRowValues(1))

			Me.[_SESSIONID] = dataListRowValues(2)

			Me.[_DATEADDED] = Blackbaud.AppFx.DataListUtility.DataListStringValueToDate(dataListRowValues(3))

			Me.[_TIMEADDED] = Blackbaud.AppFx.DataListUtility.DataListStringValueToTimeSpan(dataListRowValues(4))



		End Sub

	End Class

#End Region

	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	<System.Serializable()> _
	Public NotInheritable Class WebsiteChildLockDataListFilterData

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



		Friend Function BuildDataFormItemForFilter() As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem

			Dim dfi As New Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem

			Dim value As Object = Nothing
			value = Me.[SESSIONID]

			dfi.SetValueIfNotNull("SESSIONID", value)



			If dfi.Values Is Nothing OrElse dfi.Values.Count = 0 Then
				Return Nothing
			Else
				Return dfi
			End If

		End Function

	End Class

End Namespace


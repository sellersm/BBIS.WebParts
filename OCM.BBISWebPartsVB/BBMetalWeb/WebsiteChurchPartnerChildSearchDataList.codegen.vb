Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI


Namespace OCM.BBISWebParts
		

		    ''' <summary>
    ''' Provides WebApi access to the "Website Church Partner Child Search Data List" catalog feature.  This is the data list used by the website to get available children for a specific church partner
    ''' </summary>
<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
        Public NotInheritable Class [WebsiteChurchPartnerChildSearchDataList]

            Private Sub New()
                'this is a static class (only shared methods) that should never be instantiated.
            End Sub

            Private Shared ReadOnly _specId As Guid = New Guid("5ecb50d7-01c2-4487-8b34-1eccf6e4ff5b")
            ''' <summary>
            ''' The DataList ID value for the "Website Church Partner Child Search Data List" datalist
            ''' </summary>
            Public Shared ReadOnly Property SpecId() As Guid
                Get
                    Return _specId
                End Get
            End Property

			Private Shared ReadOnly _rowFactoryDelegate As Blackbaud.AppFx.WebAPI.DataListRowFactoryDelegate(Of [WebsiteChurchPartnerChildSearchDataListRow]) = AddressOf CreateListRow

            Private Shared Function CreateListRow(ByVal rowValues As String()) As [WebsiteChurchPartnerChildSearchDataListRow]
                Return New [WebsiteChurchPartnerChildSearchDataListRow](rowValues)
            End Function

            Public Shared Function CreateRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest
                Return Blackbaud.AppFx.WebAPI.DataListServices.CreateDataListLoadRequest(provider, [WebsiteChurchPartnerChildSearchDataList].SpecId)
            End Function
            
            Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider , ByVal recordID As String , ByVal filter As WebsiteChurchPartnerChildSearchDataListFilterData) As WebsiteChurchPartnerChildSearchDataListRow()

				                If String.IsNullOrEmpty(recordID) Then Throw New ArgumentException("recordID is required for this datalist.", "recordID")

                Dim request = CreateRequest(provider)

				request.ContextRecordID = recordID
				
				                If filter IsNot Nothing Then request.Parameters = filter.BuildDataFormItemForFilter() 
				
                Return GetRows(provider, request)

            End Function

            Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest) As WebsiteChurchPartnerChildSearchDataListRow()
                Return bbAppFxWebAPI.DataListServices.GetListRows(Of [WebsiteChurchPartnerChildSearchDataListRow])(provider, _rowFactoryDelegate, request)
            End Function

        End Class

#Region "Row Data Class"

		<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
		<System.Serializable> _
        Public NotInheritable Class [WebsiteChurchPartnerChildSearchDataListRow]

            
Private [_ID] As System.Guid
Public Property [ID] As System.Guid
    Get
        Return Me.[_ID]
    End Get
    Set
        Me.[_ID] = value 
    End Set
End Property

Private [_FIRSTNAME] As String
Public Property [FIRSTNAME] As String
    Get
        Return Me.[_FIRSTNAME]
    End Get
    Set
        Me.[_FIRSTNAME] = value 
    End Set
End Property

Private [_LASTNAME] As String
Public Property [LASTNAME] As String
    Get
        Return Me.[_LASTNAME]
    End Get
    Set
        Me.[_LASTNAME] = value 
    End Set
End Property

Private [_FULLNAME] As String
Public Property [FULLNAME] As String
    Get
        Return Me.[_FULLNAME]
    End Get
    Set
        Me.[_FULLNAME] = value 
    End Set
End Property

Private [_COUNTRYNAME] As String
Public Property [COUNTRYNAME] As String
    Get
        Return Me.[_COUNTRYNAME]
    End Get
    Set
        Me.[_COUNTRYNAME] = value 
    End Set
End Property

Private [_COUNTRYID] As System.Guid
Public Property [COUNTRYID] As System.Guid
    Get
        Return Me.[_COUNTRYID]
    End Get
    Set
        Me.[_COUNTRYID] = value 
    End Set
End Property

Private [_AGE] As Byte
Public Property [AGE] As Byte
    Get
        Return Me.[_AGE]
    End Get
    Set
        Me.[_AGE] = value 
    End Set
End Property

		Private [_BIRTHDATE] As String
		Public Property [BIRTHDATE] As String
			Get
				Return Me.[_BIRTHDATE]
			End Get
			Set(ByVal value As String)
				Me.[_BIRTHDATE] = Value
			End Set
		End Property

Private [_GENDER] As String
Public Property [GENDER] As String
    Get
        Return Me.[_GENDER]
    End Get
    Set
        Me.[_GENDER] = value 
    End Set
End Property

Private [_GENDERCODE] As Byte
Public Property [GENDERCODE] As Byte
    Get
        Return Me.[_GENDERCODE]
    End Get
    Set
        Me.[_GENDERCODE] = value 
    End Set
End Property

Private [_PROJECTNAME] As String
Public Property [PROJECTNAME] As String
    Get
        Return Me.[_PROJECTNAME]
    End Get
    Set
        Me.[_PROJECTNAME] = value 
    End Set
End Property

Private [_PROJECTID] As System.Guid
Public Property [PROJECTID] As System.Guid
    Get
        Return Me.[_PROJECTID]
    End Get
    Set
        Me.[_PROJECTID] = value 
    End Set
End Property

Private [_CHILDNO] As String
Public Property [CHILDNO] As String
    Get
        Return Me.[_CHILDNO]
    End Get
    Set
        Me.[_CHILDNO] = value 
    End Set
End Property

Private [_ELIGIBILITY] As String
Public Property [ELIGIBILITY] As String
    Get
        Return Me.[_ELIGIBILITY]
    End Get
    Set
        Me.[_ELIGIBILITY] = value 
    End Set
End Property

Private [_AVAILABILITY] As String
Public Property [AVAILABILITY] As String
    Get
        Return Me.[_AVAILABILITY]
    End Get
    Set
        Me.[_AVAILABILITY] = value 
    End Set
End Property




			Public Sub New()
				Mybase.New()
			End Sub

            Friend Sub New(ByVal dataListRowValues() As String)

                Blackbaud.AppFx.WebAPI.DataListServices.ValidateDataListOutputColumnCount(14, dataListRowValues, WebsiteChurchPartnerChildSearchDataList.SpecId)

Me.[_ID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToGuid(dataListRowValues(0))

Me.[_FIRSTNAME] = dataListRowValues(1)

Me.[_LASTNAME] = dataListRowValues(2)

Me.[_FULLNAME] = dataListRowValues(3)

Me.[_COUNTRYNAME] = dataListRowValues(4)

Me.[_COUNTRYID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToGuid(dataListRowValues(5))

Me.[_AGE] = Blackbaud.AppFx.DataListUtility.DataListStringValueToByte(dataListRowValues(6))

			'Me.[_BIRTHDATE] = Blackbaud.AppFx.DataListUtility.DataListStringValueToDate(dataListRowValues(7))
			Me.[_BIRTHDATE] = dataListRowValues(7)

Me.[_GENDER] = dataListRowValues(8)

Me.[_GENDERCODE] = Blackbaud.AppFx.DataListUtility.DataListStringValueToByte(dataListRowValues(9))

Me.[_PROJECTNAME] = dataListRowValues(10)

Me.[_PROJECTID] = Blackbaud.AppFx.DataListUtility.DataListStringValueToGuid(dataListRowValues(11))

Me.[_CHILDNO] = dataListRowValues(12)

Me.[_ELIGIBILITY] = dataListRowValues(13)

Me.[_AVAILABILITY] = dataListRowValues(14)



            End Sub

        End Class
        
#End Region

		<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
		<System.Serializable> _
		Public NotInheritable Class WebsiteChurchPartnerChildSearchDataListFilterData
		    
			Private [_GENDER] As String
''' <summary>
''' Gender
''' </summary>
Public Property [GENDER] As String
    Get
        Return Me.[_GENDER]
    End Get
    Set
        Me.[_GENDER] = value 
    End Set
End Property

Private [_AGEMIN] As String
''' <summary>
''' Minimum Age
''' </summary>
Public Property [AGEMIN] As String
    Get
        Return Me.[_AGEMIN]
    End Get
    Set
        Me.[_AGEMIN] = value 
    End Set
End Property

Private [_AGEMAX] As String
''' <summary>
''' Maximum Age
''' </summary>
Public Property [AGEMAX] As String
    Get
        Return Me.[_AGEMAX]
    End Get
    Set
        Me.[_AGEMAX] = value 
    End Set
End Property

Private [_COUNTRY] As String
''' <summary>
''' Country
''' </summary>
Public Property [COUNTRY] As String
    Get
        Return Me.[_COUNTRY]
    End Get
    Set
        Me.[_COUNTRY] = value 
    End Set
End Property



			Friend Function BuildDataFormItemForFilter() As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem
		        
				Dim dfi As New Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem
		    
				Dim value As Object = Nothing
value = Me.[GENDER]

	dfi.SetValueIfNotNull("GENDER",value)

value = Me.[AGEMIN]

	dfi.SetValueIfNotNull("AGEMIN",value)

value = Me.[AGEMAX]

	dfi.SetValueIfNotNull("AGEMAX",value)

value = Me.[COUNTRY]

	dfi.SetValueIfNotNull("COUNTRY",value)



				if dfi.Values Is Nothing orelse dfi.Values.Count=0 then
					return nothing
				else
					Return dfi
				 end if
		        
			End Function
		    
		End Class
  
End Namespace


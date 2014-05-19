Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI


Namespace OCM.BBISWebParts

		'<@ENUMS@>

		    ''' <summary>
    ''' Provides WebApi access to the "Website Sponsorship Payments Data List" catalog feature.  Used to display the payments for a particular child on the website.
    ''' </summary>
<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
        Public NotInheritable Class [WebsiteSponsorshipPaymentsDataList]

            Private Sub New()
                'this is a static class (only shared methods) that should never be instantiated.
            End Sub

            Private Shared ReadOnly _specId As Guid = New Guid("384fedc7-25b7-4cde-873c-dc26f48178ae")
            ''' <summary>
            ''' The DataList ID value for the "Website Sponsorship Payments Data List" datalist
            ''' </summary>
            Public Shared ReadOnly Property SpecId() As Guid
                Get
                    Return _specId
                End Get
            End Property

			Private Shared ReadOnly _rowFactoryDelegate As Blackbaud.AppFx.WebAPI.DataListRowFactoryDelegate(Of [WebsiteSponsorshipPaymentsDataListRow]) = AddressOf CreateListRow

            Private Shared Function CreateListRow(ByVal rowValues As String()) As [WebsiteSponsorshipPaymentsDataListRow]
                Return New [WebsiteSponsorshipPaymentsDataListRow](rowValues)
            End Function

            Public Shared Function CreateRequest(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider) As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest
                Return Blackbaud.AppFx.WebAPI.DataListServices.CreateDataListLoadRequest(provider, [WebsiteSponsorshipPaymentsDataList].SpecId)
            End Function
            
            Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider , ByVal recordID As String ) As WebsiteSponsorshipPaymentsDataListRow()

				                If String.IsNullOrEmpty(recordID) Then Throw New ArgumentException("recordID is required for this datalist.", "recordID")

                Dim request = CreateRequest(provider)

				request.ContextRecordID = recordID
				
				 
				
                Return GetRows(provider, request)

            End Function

            Public Shared Function GetRows(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataListLoadRequest) As WebsiteSponsorshipPaymentsDataListRow()
                Return bbAppFxWebAPI.DataListServices.GetListRows(Of [WebsiteSponsorshipPaymentsDataListRow])(provider, _rowFactoryDelegate, request)
            End Function

        End Class

#Region "Row Data Class"

		<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
		<System.Serializable> _
        Public NotInheritable Class [WebsiteSponsorshipPaymentsDataListRow]

            
Private [_DATE] As Nullable(of Date)
Public Property [DATE] As Nullable(of Date)
    Get
        Return Me.[_DATE]
    End Get
    Set
        Me.[_DATE] = value 
    End Set
End Property

Private [_AMOUNT] As Decimal
Public Property [AMOUNT] As Decimal
    Get
        Return Me.[_AMOUNT]
    End Get
    Set
        Me.[_AMOUNT] = value 
    End Set
End Property

Private [_ACTIVITYTYPE] As String
Public Property [ACTIVITYTYPE] As String
    Get
        Return Me.[_ACTIVITYTYPE]
    End Get
    Set
        Me.[_ACTIVITYTYPE] = value 
    End Set
End Property




			Public Sub New()
				Mybase.New()
			End Sub

            Friend Sub New(ByVal dataListRowValues() As String)

                Blackbaud.AppFx.WebAPI.DataListServices.ValidateDataListOutputColumnCount(2, dataListRowValues, WebsiteSponsorshipPaymentsDataList.SpecId)

Me.[_DATE] = Blackbaud.AppFx.DataListUtility.DataListStringValueToDate(dataListRowValues(0))

Me.[_AMOUNT] = Blackbaud.AppFx.DataListUtility.DataListStringValueToDec(dataListRowValues(1))

Me.[_ACTIVITYTYPE] = dataListRowValues(2)



            End Sub

        End Class
        
#End Region


  

End Namespace



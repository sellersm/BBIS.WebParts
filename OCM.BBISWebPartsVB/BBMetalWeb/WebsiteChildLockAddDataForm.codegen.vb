Option Infer On
Option Strict Off

Imports bbAppFxWebAPI = Blackbaud.AppFx.WebAPI



Namespace OCM.BBISWebParts
    
		

		    ''' <summary>
    ''' Provides WebApi access to the "Website Child Lock Add Data Form" catalog feature.  REPLACE_WITH_DESCRIPTION
    ''' </summary>
	<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	Public NotInheritable Class WebsiteChildLockAddDataForm

		Private Sub New()
		End Sub

		Private Shared ReadOnly _specId As Guid = New Guid("b46fe5b4-0fbf-4dfc-8f9b-e6b19f281720")

		''' <summary>
		''' The Spec ID value for the "Website Child Lock Add Data Form" AddForm
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
		''' Returns an instance of WebsiteChildLockAddDataFormData with default data form fields populated.
		''' </summary>
		''' <returns>An instance of WebsiteChildLockAddDataFormData with the form field properties that have defaults populated with those default values.</returns>
		''' <remarks>This function will make a web request to the AppFx WebService DataFormLoad method to obtain the default data form field values.</remarks>
		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal contextRecordId As String) As WebsiteChildLockAddDataFormData



			Dim request = CreateLoadRequest(provider)



			request.ContextRecordID = contextRecordId

			Return LoadData(provider, request)

		End Function

		''' <summary>
		''' Returns an instance of WebsiteChildLockAddDataFormData with default data form fields populated.
		''' </summary>
		''' <returns>An instance of WebsiteChildLockAddDataFormData with the form field properties that have defaults populated with those default values.</returns>
		''' <remarks>This function will make a web request to the AppFx WebService DataFormLoad method to obtain the default data form field values.</remarks>
		Public Shared Function LoadData(ByVal provider As bbAppFxWebAPI.AppFxWebServiceProvider, ByVal request As bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest) As WebsiteChildLockAddDataFormData
			Return bbAppFxWebAPI.DataFormServices.GetFormData(Of WebsiteChildLockAddDataFormData)(provider, request)
		End Function

	End Class

#Region "Data Class"

        ''' <summary>
        ''' Represents the data form field values in the "Website Child Lock Add Data Form" data form.
        ''' </summary>
		<System.CodeDom.Compiler.GeneratedCodeAttribute("BBMetalWeb", "2011.8.2.0")> _
	    Public NotInheritable Class WebsiteChildLockAddDataFormData
			Inherits bbAppFxWebAPI.AddFormData
        
#Region "Constructors"
        
			Public Sub New()
				Mybase.New()
			End Sub

			Friend Sub New(ByVal reply as bbAppFxWebAPI.ServiceProxy.DataFormLoadReply,request as bbAppFxWebAPI.ServiceProxy.DataFormLoadRequest)
				Mybase.New()					
				If (reply IsNot Nothing) AndAlso (reply.DataFormItem IsNot Nothing) Then
					Me.SetValues(reply.DataFormItem)
				End If
			End Sub
        
        	Public Sub New(ByVal dfi as Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
				Mybase.New()					
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
    Set
        Me.[_SESSIONID] = value 
    End Set
End Property

        

#End Region

            Public Overrides ReadOnly Property DataFormInstanceID() As System.Guid
                Get
				Return WebsiteChildLockAddDataForm.SpecId
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


	            
			End Sub

			Private Function BuildDataFormItemForSave() As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem
        
				Dim dfi As New Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem	 
	                    
				Dim value As Object = Nothing
value = Me.[SESSIONID]
	dfi.SetValueIfNotNull("SESSIONID",value)

	    
				Return dfi	    
	        
			End Function
			
			Public Overrides Sub SetValuesFromDataFormItem(ByVal dataFormItem As Blackbaud.AppFx.XmlTypes.DataForms.DataFormItem)
                Me.SetValues(dataFormItem)
            End Sub
            
			
	 
		End Class
    
#End Region
    
    End Namespace

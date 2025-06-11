#tag Class
Protected Class ResultTableDataSource
Implements iOSMobileTableDataSource
	#tag Method, Flags = &h0
		Sub Constructor(results() As RotemResult)
		  mResults = results
		  mResults = results
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RowCount(table As iOSMobileTable, section As Integer) As integer
		  
		  Return mResults.Count
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  'Function RowData(table As iOSMobileTable, section As Integer, row As Integer) As MobileTableCellData
		  
		  
		  Var cell As MobileTableCellData = table.CreateCustomCell(GetTypeInfo(TableCustomCell))
		  Var customCell As TableCustomCell = TableCustomCell(cell.Control)
		  customCell.LoadData(mResults(row))
		  Return cell
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionCount(table As iOSMobileTable) As Integer
		  // Part of the iOSMobileTableDataSource interface.
		  
		  Return 1 // Single section for simplicity
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  // Return the title for the section
		  'Function SectionTitle(table As iOSMobileTable, section As Integer) As String
		  Return "" // No section title for a single section
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mResults() As RotemResult
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

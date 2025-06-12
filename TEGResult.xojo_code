#tag Class
Protected Class TEGResult
	#tag Method, Flags = &h0
		Function IsNormal() As Boolean
		  
		  Return CKH_R >= 4.0 And CKH_R <= 8.0 And CRT_LY30 <= 7.0
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CFF_A10 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CKH_R As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		CRT_A10 As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CRT_LY30 As Double
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
		#tag ViewProperty
			Name="CKH_R"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CRT_LY30"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

#tag Class
Protected Class RotemResult
	#tag Method, Flags = &h0
		Function IsNormal() As Boolean
		  Return EXTEM_A5 > 40 And FIBTEM_A5 > 10 And EXTEM_CT < 80 And FIBTEM_ML < 15
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		EXTEM_A5 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		EXTEM_CT As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		FIBTEM_A5 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		FIBTEM_ML As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		HEPTEM_CT As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		INTEM_CT As Double
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
			Name="EXTEM_A5"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FIBTEM_A5"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="EXTEM_CT"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FIBTEM_ML"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass

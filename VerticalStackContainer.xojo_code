#tag MobileContainer
Begin MobileContainer VerticalStackContainer
   AccessibilityHint=   ""
   AccessibilityLabel=   ""
   Compatibility   =   ""
   Device = 7
   Height          =   480
   Left            =   0
   Orientation = 0
   Top             =   0
   Visible         =   True
   Width           =   320
End
#tag EndMobileContainer

#tag WindowCode
	#tag Method, Flags = &h0
		Sub AddStepRow(row As StepRowContainer)
		  ''Public Sub AddStepRow(row As StepRowContainer)
		  'row.Top = Me.LastBottom + 8
		  'row.Left = 10
		  'row.Width = Me.Width - 20
		  'Me.AddControl(row)
		  'stepRows.Add(row)
		  ''End Sub
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function LastBottom() As Integer
		  'Private Function LastBottom() As Integer
		  If stepRows.LastIndex >= 0 Then
		    Return stepRows(stepRows.LastIndex).Top + stepRows(stepRows.LastIndex).Height
		  Else
		    Return 0
		  End If
		  'End Function
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		stepRows() As StepRowContainer
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityHint"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AccessibilityLabel"
		Visible=false
		Group="UI Control"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="UI Control"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="320"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="480"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior

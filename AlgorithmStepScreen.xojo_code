#tag MobileScreen
Begin MobileScreen AlgorithmStepScreen
   BackButtonCaption=   ""
   Compatibility   =   ""
   ControlCount    =   0
   Device = 7
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   ScaleFactor     =   0.0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c000000
   Title           =   "Algorithm Step Screen"
   Top             =   0
   Begin MobileScrollableArea StepScrollArea
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   StepScrollArea, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   StepScrollArea, 7, , 0, False, +1.00, 4, 1, 320, , True
      AutoLayout      =   StepScrollArea, 3, , 0, False, +1.00, 4, 1, 150, , True
      AutoLayout      =   StepScrollArea, 8, , 0, False, +1.00, 4, 1, 320, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   320
      Left            =   35
      LockedInPosition=   False
      Scope           =   0
      ScrollContent   =   0
      TintColor       =   &c000000
      Top             =   150
      Visible         =   True
      Width           =   320
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  ' Get reference to container control
		  Var cc As  New StepRowContainer
		  
		  StepScrollArea.Container = cc
		  
		  ' Now you can call methods on it
		  
		  If Mode = "TEG" Then
		    AddStep("⏳", "Check CKH-R")
		    AddStep("⏳", "Check LY30")
		    AddStep("✅", "Normal values — continue observation.")
		    AddStep("⏳", "If bleeding continues after 10 minutes, restart the algorithm.")
		  ElseIf Mode = "Rotem" then
		    AddStep("⏳", "Check EXTEM A5")
		    AddStep("⏳", "Check FIBTEM A5")
		    AddStep("⏳", "Check EXTEM CT")
		    AddStep("⏳", "Check FIBTEM ML")
		    AddStep("✅", "Normal values — continue observation.")
		    AddStep("⏳", "If bleeding continues after 10 minutes, restart the algorithm.")
		  End If
		  'End Sub
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub AddStep(icon As Text, stepText As Text)
		  'Sub AddStep(icon As Text, stepText As Text)
		  Var row As New StepRowContainer
		  row.SetIconAndText(icon, stepText)
		  stepscrollarea.AddControl(row) // StepList = iOSScrollableArea or equivalent
		  '
		  '
		  '
		  'Var row As New StepRowContainer
		  'row.SetIconAndText("check.png", "ROTEM FIBTEM A5 normal")
		  'stepscrollarea.AddStepRow(row)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ButtonRestart_Pressed()
		  
		  Var ScreebStart As New StartScreen
		  ScreebStart.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(inputMode As Text)
		  'Sub Constructor(inputMode As Text)
		  Mode = inputMode
		  'End Sub
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Mode As Text
	#tag EndProperty

	#tag Property, Flags = &h0
		ROTEMData As ROTEMResult
	#tag EndProperty

	#tag Property, Flags = &h0
		StepIndex As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		TEGData As TEGResult
	#tag EndProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
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
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Mode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Text"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="StepIndex"
		Visible=false
		Group="Behavior"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TEGData"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ROTEMData"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior

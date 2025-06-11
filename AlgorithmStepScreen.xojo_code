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
   Begin iOSMobileTable ResultTable
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowRefresh    =   False
      AllowSearch     =   False
      AutoLayout      =   ResultTable, 7, , 0, False, +1.00, 4, 1, 320, , True
      AutoLayout      =   ResultTable, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   ResultTable, 3, <Parent>, 3, False, +1.00, 4, 1, 159, , True
      AutoLayout      =   ResultTable, 8, , 0, False, +1.00, 4, 1, 549, , True
      ControlCount    =   0
      EditingEnabled  =   False
      EditingEnabled  =   False
      Enabled         =   True
      EstimatedRowHeight=   0
      Format          =   0
      Height          =   549
      Left            =   35
      LockedInPosition=   False
      Scope           =   0
      SectionCount    =   0
      TintColor       =   &c000000
      Top             =   159
      Visible         =   True
      Width           =   320
      _ClosingFired   =   False
      _OpeningCompleted=   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  
		  'If Mode = "TEG" Then
		  'AddStep("⏳", "Check CKH-R" + CRLF)
		  'AddStep("⏳", "Check LY30")
		  'AddStep("✅", "Normal values — continue observation.")
		  'AddStep("⏳", "If bleeding continues after 10 minutes, restart the algorithm.")
		  'ElseIf Mode = "Rotem" then
		  'AddStep("⏳", "Check EXTEM A5" + CRLF)
		  'AddStep("⏳", "Check FIBTEM A5")
		  'AddStep("⏳", "Check EXTEM CT")
		  'AddStep("⏳", "Check FIBTEM ML")
		  'AddStep("✅", "Normal values — continue observation.")
		  'AddStep("⏳", "If bleeding continues after 10 minutes, restart the algorithm.")
		  'End If
		  'End Sub
		  LoadItems()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddResult(Text As String)
		  'Sub AddResult(Text As String)
		  If ResultTable.SectionCount = 0 Then
		    ResultTable.AddSection("Results")
		  End If
		  
		  ResultTable.AddRow(0, Text)
		  ResultData.Add(Text)
		  'End Sub
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddStep(icon As Text, stepText As Text)
		  
		  
		  Var cell As MobileTableCellData
		  
		  ResultTable.AddRow(0, cell)
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

	#tag Method, Flags = &h0
		Sub LoadItems()
		  'Var ResultData() As String
		  
		  Select Case Mode
		  Case "ROTEM"
		    'MessageBox("Rotem selected")
		    ResultTable.RemoveAllRows
		    If ResultTable.SectionCount = 0 Then
		      ResultTable.AddSection("")
		    End If
		    
		    
		    
		    'ResultTable.DataSource = ROTEMData
		    If rotemdata.EXTEM_A5 < 35 Then AddResult("EXTEM < 35 → Hyperfibrinolysis")
		    If rotemdata.FIBTEM_A5 < 12 Then AddResult("FIBTEM < 8 → Hypofibrinogenemia")
		    If  rotemdata.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_A5 < 35 Then 
		       AddResult("Poor Platelet Contribution")
		    End If
		    
		    If ROTEMData.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_CT > 85 Then
		      AddResult("Low Coagulation Factors or Oral anticoagulants")
		    End If
		    
		    If ROTEMData.FIBTEM_ML  >= 10 Then  AddResult("FIBTEM_ML  >= 10→ Hyperfibrinolysis")
		  Case "TEG"
		    'MessageBox("TEG selected")
		  End Select
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Mode As Text
	#tag EndProperty

	#tag Property, Flags = &h1
		Protected ResultData() As String
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

#tag Events ResultTable
	#tag Event
		Sub SelectionChanged(section As Integer, row As Integer)
		  Var value As String
		  If row >= 0 And row <= UBound(ResultData) Then
		    value = ResultData(row)
		    MessageBox("You tapped: " + value)
		  End If
		  
		  'If value =  "EXTEM < 35 → Hyperfibrinolysis" Then
		  'MessageBox(" Give Tranexamic Acid 1 gram Or 15mg/kg")
		  'End If
		  
		  Select Case value
		  Case  "EXTEM < 35 → Hyperfibrinolysis" 
		    MessageBox(" Give Tranexamic Acid 1 gram Or 15mg/kg")
		  Case "FIBTEM < 8 → Hypofibrinogenemia"
		    MessageBox(" Give Tranexamic Acid 1 gram Or 15mg/kg")
		  End Select
		End Sub
	#tag EndEvent
#tag EndEvents
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
#tag EndViewBehavior

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
		  
		  LoadItems()
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AddResult(Text As String)
		  'Sub AddResult(Text As String) NEEDED
		  If ResultTable.SectionCount = 0 Then
		    ResultTable.AddSection("Results")
		  End If
		  
		  ResultTable.AddRow(0, Text)
		  ResultData.Add(Text)
		  'End Sub
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ButtonRestart_Pressed()
		  
		  Var ScreebStart As New StartScreen
		  ScreebStart.show
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub LoadItems()
		  'Var ResultData() As String
		  ResultTable.RemoveAllRows
		  Select Case ProcedureType
		  Case "General"
		    Select Case Mode
		    Case "ROTEM"
		      'MessageBox("Rotem selected")
		      
		      If ResultTable.SectionCount = 0 Then
		        ResultTable.AddSection("")
		      End If
		      
		      
		      
		      'ResultTable.DataSource = ROTEMData
		      If rotemdata.EXTEM_A5 < 35 Then AddResult("EXTEM < 35 → Hyperfibrinolysis")
		      If rotemdata.FIBTEM_A5 < 12 Then AddResult("FIBTEM < 12 → Low Fibrinogen")
		      If  rotemdata.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_A5 < 35 Then 
		        AddResult("Poor Platelet Contribution")
		      End If
		      
		      If ROTEMData.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_CT > 85 Then
		        AddResult("Low Coagulation Factors or Oral anticoagulants")
		        
		      End If
		      
		      If ROTEMData.FIBTEM_ML  >= 10 Then  AddResult("FIBTEM_ML  >= 10→ Hyperfibrinolysis")
		      
		    Case "TEG"
		      'MessageBox("TEG selected")
		      
		      If TEGDATA.CRT_A10 < 47 Then 
		        AddResult("CRT_A10 < 47 → Hyperfibrinolysis")
		      End If
		      
		      If TEGDATA.CFF_A10 >=  15 And TEGDATA.CRT_A10 < 47 Then
		        AddResult("Poor Platelet Contribution")
		      End If
		      
		      If TEGDATA.CFF_A10 >=15 And TEGData.CKH_R > 10 Then
		        AddResult("Low Coagulation Factors or Oral anticoagulants")
		      End If
		      
		      If TEGDATA.CRT_LY30 > 2.2 Then AddResult("CRT_LY30 > 2.2 → Hyperfibrinolysis")
		      
		      
		    End Select
		    
		  Case "Cardiac"
		    If rotemdata.INTEM_CT/ROTEMData.EXTEM_CT > 1.25 Then
		      AddResult("Heparin Effect")
		    End If
		    
		    MessageBox(" rotemdata.EXTEM_CT = " + rotemdata.EXTEM_CT.ToString)
		    If  rotemdata.INTEM_CT > 205 And ROTEMData.HEPTEM_CT > 205 Then
		      AddResult("Protamine ,  Factor V,  Xa ")
		    End If
		    
		    If rotemdata.FIBTEM_A5 < 12 Then AddResult("FIBTEM < 12 → Low Fibrinogen")
		    
		    If  rotemdata.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_A5 < 35 Then 
		      AddResult("Poor Platelet Contribution")
		    End If
		    If ROTEMData.FIBTEM_A5 >= 12 And ROTEMData.EXTEM_CT > 85 Then
		      AddResult("Low Coagulation Factors or Oral anticoagulants")
		    End If
		    
		    If ROTEMData.FIBTEM_ML  >= 10 Then  AddResult( "FIBTEM_ML  >= 10% → Hyperfibrinolysis")
		    
		    
		  End Select
		  
		  AddResult("Still Bleeding?")
		  
		  
		  
		  
		  
		  
		  
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
		    // MessageBox("You tapped: " + value)
		  End If
		  
		  Select Case ProcedureType
		  Case "General"
		    
		    Select Case value
		    Case  "EXTEM < 35 → Hyperfibrinolysis" 
		      MessageBox(" Give Tranexamic Acid 1 gram Or 15mg/kg")
		    Case "FIBTEM < 12 → Low Fibrinogen"
		      MessageBox(" FIBRINOGEN As FIB CONCENTRATE Or CRYOPRECIPITATE" + EndOfLine + "Usually for massive obstetric haemorrhage or severely low FIBTEM or CFF")
		      Var  CRYOSCREEN As New CRYOFIBCONCScreen
		      CRYOSCREEN.SHOW
		    Case  "Poor Platelet Contribution"
		      MessageBox("1 unit Pool Platelets (Consider 2 units if EXTEM A5< 26), Desmopressin / DDAVP 0.3microg/kg IV Especially for patients with renal dysfunction")
		      Var Platelets As New PlateletScreen
		      Platelets.show
		    Case "Low Coagulation Factors or Oral anticoagulants"
		      MessageBox("ELP 4 units OR Beriplex PCC 10-15 Units/kg IV (Use lower dose for high thromboembolic risk)")
		    Case "FIBTEM_ML  >= 10→ Hyperfibrinolysis"
		      MessageBox("Consider additional tranexamic acid")
		      
		    Case "CRT_A10 < 47 → Hyperfibrinolysis" 
		      MessageBox(" Tranexamic Acid 1 gram Or 15mg/kg")
		    Case "CFF_A10 < 15 → Low Fibrinogen"
		      MessageBox(" FIBRINOGEN As FIB CONCENTRATE Or CRYOPRECIPITATE" + EndOfLine + "Usually for massive obstetric haemorrhage or severely low FIBTEM or CFF")
		      Var  CRYOSCREEN As New CRYOFIBCONCScreen
		      CRYOSCREEN.SHOW
		    Case "Poor Platelet Contribution"
		      MessageBox("1 unit Pool Platelets (Consider 2 units if EXTEM A5< 26), Desmopressin / DDAVP 0.3microg/kg IV Especially for patients with renal dysfunction")
		      Var Platelets As New PlateletScreen
		      Platelets.show
		    Case "Low Coagulation Factors or Oral anticoagulants"
		      MessageBox("ELP 4 units OR Beriplex PCC 10-15 Units/kg IV (Use lower dose for high thromboembolic risk)")
		      Var Factors As New FactorsScreen
		      Factors.show
		    Case "CRT_LY30 > 2.2 → Hyperfibrinolysis"
		      MessageBox("Consider additional tranexamic acid")
		      
		    End Select
		  Case "Cardiac"
		    Select Case value
		      
		    Case "Heparin Effect"
		      MessageBox(" Give Protamine IV 0.5-1 mg/Kg")
		    Case "Protamine ,  Factor V,  Xa "
		      MessageBox("Excess protamine affecting factor V,  "+ EndOfLine +_
		      "Or intrinsic factor deficiency Or factor Xa inhibitor"+ EndOfLine +_
		      "Wait >10 minutes then re-test. If prolonged after re-test, " + EndOfLine +_
		      "consider coagulation factor deficiency. Consider mixing studies")
		    Case "FIBTEM < 12 → Low Fibrinogen"
		      MessageBox(" FIBRINOGEN As FIB CONCENTRATE Or CRYOPRECIPITATE" + EndOfLine +_
		      "Clinician discretion for Fibrinogen Concentrate Usually single dose For severely low FIBTEM or CFF")
		      Var  CRYOSCREEN As New CRYOFIBCONCScreen
		      CRYOSCREEN.SHOW
		    Case  "Poor Platelet Contribution"
		      MessageBox("1 unit Pool Platelets (Consider 2 units if EXTEM A5< 26), Desmopressin / DDAVP 0.3microg/kg IV Especially for patients with renal dysfunction")
		      Var Platelets As New PlateletScreen
		      Platelets.show
		    Case "Low Coagulation Factors or Oral anticoagulants"
		      MessageBox("ELP 4 units OR Beriplex PCC 10-15 Units/kg IV (Use lower dose for high thromboembolic risk)")
		      Var Factors As New FactorsScreen
		      Factors.show
		    Case "FIBTEM_ML  >= 10% → Hyperfibrinolysis"
		      MessageBox("Consider additional tranexamic acid")
		      
		      
		      
		      
		      '
		      'Case  "EXTEM < 35 → Hyperfibrinolysis" 
		      'MessageBox(" Give Tranexamic Acid 1 gram Or 15mg/kg")
		      'Case "FIBTEM < 12 → Low Fibrinogen"
		      'MessageBox(" FIBRINOGEN As FIB CONCENTRATE Or CRYOPRECIPITATE" + EndOfLine + "Usually for massive obstetric haemorrhage or severely low FIBTEM or CFF")
		      'Case  "Poor Platelet Contribution"
		      'MessageBox("1 unit Pool Platelets (Consider 2 units if EXTEM A5< 26), Desmopressin / DDAVP 0.3microg/kg IV Especially for patients with renal dysfunction")
		      'Var Platelets As New PlateletScreen
		      'Platelets.show
		      'Case "Low Coagulation Factors or Oral anticoagulants"
		      'MessageBox("ELP 4 units OR Beriplex PCC 10-15 Units/kg IV (Use lower dose for high thromboembolic risk)")
		      'Case "FIBTEM_ML  >= 10→ Hyperfibrinolysis"
		      'MessageBox("Consider additional tranexamic acid")
		      '
		      'Case "CRT_A10 < 47 → Hyperfibrinolysis" 
		      'MessageBox(" Tranexamic Acid 1 gram Or 15mg/kg")
		      'Case "CFF_A10 < 15 → Low Fibrinogen"
		      'MessageBox(" FIBRINOGEN As FIB CONCENTRATE Or CRYOPRECIPITATE" + EndOfLine + "Usually for massive obstetric haemorrhage or severely low FIBTEM or CFF")
		      'Case "Poor Platelet Contribution"
		      'MessageBox("1 unit Pool Platelets (Consider 2 units if EXTEM A5< 26), Desmopressin / DDAVP 0.3microg/kg IV Especially for patients with renal dysfunction")
		      'Var Platelets As New PlateletScreen
		      'Platelets.show
		      'Case "Low Coagulation Factors or Oral anticoagulants"
		      'MessageBox("ELP 4 units OR Beriplex PCC 10-15 Units/kg IV (Use lower dose for high thromboembolic risk)")
		      
		      
		    End Select
		  End Select
		  
		  If value = "Still Bleeding?" Then
		    Var Bleeding As New StillBleedingScreen
		    Bleeding.Show 
		  end if
		  
		  
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

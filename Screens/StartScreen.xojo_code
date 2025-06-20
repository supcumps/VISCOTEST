#tag MobileScreen
Begin MobileScreen StartScreen
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
   TintColor       =   &c00000000
   Title           =   "TEGRotem application"
   Top             =   0
   Begin MobileSwitch TestSwitch
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TestSwitch, 8, , 0, True, +1.00, 4, 1, 31, , True
      AutoLayout      =   TestSwitch, 1, SignificantBleedingLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   TestSwitch, 10, SignificantBleedingLabel, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TestSwitch, 7, , 0, True, +1.00, 4, 1, 51, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   31
      Left            =   293
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   379
      Value           =   False
      Visible         =   True
      Width           =   51
      _ClosingFired   =   False
   End
   Begin MobileLabel SignificantBleedingLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   SignificantBleedingLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   SignificantBleedingLabel, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   SignificantBleedingLabel, 3, CardiacButton, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   SignificantBleedingLabel, 7, , 0, False, +1.00, 4, 1, 265, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Is there a risk of significant bleeding?"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   380
      Visible         =   True
      Width           =   265
      _ClosingFired   =   False
   End
   Begin MobileLabel ChooseTestLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AutoLayout      =   ChooseTestLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ChooseTestLabel, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   ChooseTestLabel, 3, SignificantBleedingLabel, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   ChooseTestLabel, 7, , 0, False, +1.00, 4, 1, 104, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   20
      LineBreakMode   =   0
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Select testing"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   430
      Visible         =   True
      Width           =   104
      _ClosingFired   =   False
   End
   Begin MobileImageViewer image
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   image, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   image, 8, , 0, False, +1.00, 4, 1, 160, , True
      AutoLayout      =   image, 3, <Parent>, 3, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   image, 7, , 0, False, +1.00, 4, 1, 160, , True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   160
      Image           =   1306169343
      Left            =   107
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   100
      URL             =   ""
      Visible         =   True
      Width           =   160
      _ClosingFired   =   False
   End
   Begin MobileButton TEGButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   TEGButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   TEGButton, 1, ROTEMButton, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TEGButton, 10, ROTEMButton, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   TEGButton, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "TEG"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   232
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   430
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton ROTEMButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ROTEMButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ROTEMButton, 1, ChooseTestLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   ROTEMButton, 10, ChooseTestLabel, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ROTEMButton, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "ROTEM"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   132
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   430
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton CardiacButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   CardiacButton, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CardiacButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CardiacButton, 3, GeneralOBG, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CardiacButton, 7, , 0, False, +1.00, 4, 1, 125, , True
      Caption         =   "Cardiac/Vascular"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   125
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   330
      Visible         =   True
      Width           =   125
      _ClosingFired   =   False
   End
   Begin MobileButton GeneralOBG
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GeneralOBG, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   GeneralOBG, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   GeneralOBG, 3, image, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   GeneralOBG, 7, , 0, False, +1.00, 4, 1, 125, , True
      Caption         =   "General/Obstetric"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   125
      LockedInPosition=   False
      Scope           =   2
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   280
      Visible         =   True
      Width           =   125
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Setup buttons and interface if needed
		  Me.SetBackgroundColorXC(&cFFFDEE)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function CheckPrecureType() As Boolean
		  If ProcedureType.Trim = "" Then
		    MessageBox("Please choose the procedure type before continuing")
		    Return False
		  Else
		    return TRUE
		  End If
		  
		End Function
	#tag EndMethod


#tag EndWindowCode

#tag Events TestSwitch
	#tag Event
		Sub ValueChanged()
		  If TestSwitch.Value Then   // there is a risk of significant bleeding
		    'MessageBox("ON")
		    Select Case ProcedureType
		    Case "General"
		      Var  Message As String = "High risk Of Fibrinolysis?" + EndOfLine +  _
		      " ( E.g. trauma, obstetric, major orthopaedic Case " + EndOfLine +  _
		      "Consider Tranexamic Acid 1g IV now!"   + EndOfLine   
		      MessageBox(Message)
		      
		      TestSwitch.Value  = FALSE
		      'd.Explanation = "Administration before bleeding helps limit blood loss"
		    Case"Cardiac"
		      Var  Message As String = "High risk of Fibrinolysis? E.g. CBP, aortic dissection " + EndOfLine + _
		      "Give Tranexamic Acid initial 15mg/kg then check cardiac infusion schedule"
		      MessageBox(Message)
		      
		      TestSwitch.Value  = False
		    End Select
		    
		  Else
		    'MessageBox("OFF")
		  End If
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TEGButton
	#tag Event
		Sub Pressed()
		  
		  If CheckPrecureType then
		    Var TEGSreen As  New TEGInputScreen
		    TEGSreen.Show()
		  End If
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ROTEMButton
	#tag Event
		Sub Pressed()
		  If CheckPrecureType Then
		    Var RotemScreen As  New ROTEMInputScreen
		    RotemScreen.Show
		  End If
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  SetBackgroundColorXC(color.RGB(255, 255, 255))
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CardiacButton
	#tag Event
		Sub Pressed()
		  ProcedureType = "Cardiac"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeneralOBG
	#tag Event
		Sub Pressed()
		  ProcedureType = "General"
		  
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
#tag EndViewBehavior

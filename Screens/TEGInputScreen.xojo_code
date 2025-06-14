#tag MobileScreen
Begin MobileScreen TEGInputScreen
   BackButtonCaption=   "Main Screen"
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
   Title           =   "TEG"
   Top             =   0
   Begin MobileTextField CKH_RField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CKH_RField, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   CKH_RField, 1, CKH_RLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   CKH_RField, 10, CKH_RLabel, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CKH_RField, 7, , 0, False, +1.00, 4, 1, 111, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CKH-R"
      InputType       =   4
      Left            =   108
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   313
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileTextField CRT_LY30Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CRT_LY30Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   CRT_LY30Field, 1, CRT_LY30Label, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   CRT_LY30Field, 10, CRT_LY30Label, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CRT_LY30Field, 7, , 0, False, +1.00, 4, 1, 111, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CRT_LY30"
      InputType       =   4
      Left            =   108
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   363
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileButton ButtonContinue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonContinue, 9, <Parent>, 9, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   ButtonContinue, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   ButtonContinue, 3, CRT_LY30Label, 4, False, +1.00, 4, 1, 50, , True
      AutoLayout      =   ButtonContinue, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Continue"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   157
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   445
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileLabel CKH_RLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CKH_RLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CKH_RLabel, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CKH_RLabel, 3, CKRLabel, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CKH_RLabel, 7, , 0, False, +1.00, 4, 1, 80, , True
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
      Text            =   "CKH-R"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   315
      Visible         =   True
      Width           =   80
      _ClosingFired   =   False
   End
   Begin MobileLabel CRT_LY30Label
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CRT_LY30Label, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CRT_LY30Label, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CRT_LY30Label, 3, CKH_RLabel, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CRT_LY30Label, 7, , 0, False, +1.00, 4, 1, 80, , True
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
      Text            =   "CRT_LY30"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   365
      Visible         =   True
      Width           =   80
      _ClosingFired   =   False
   End
   Begin MobileTextField CFF_A10Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CFF_A10Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   CFF_A10Field, 1, CFF_a10Label, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   CFF_A10Field, 10, CFF_a10Label, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CFF_A10Field, 7, , 0, False, +1.00, 4, 1, 111, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CFF A10"
      InputType       =   4
      Left            =   108
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   0
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   163
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileLabel CFF_A10Label
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CFF_A10Label, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CFF_A10Label, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CFF_A10Label, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   CFF_A10Label, 7, , 0, False, +1.00, 4, 1, 80, , True
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
      Text            =   "CFF_A10"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   165
      Visible         =   True
      Width           =   80
      _ClosingFired   =   False
   End
   Begin MobileTextField CRT_A10Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CRT_A10Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   CRT_A10Field, 1, CKH_RLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   CRT_A10Field, 10, CRT_A10Label, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CRT_A10Field, 7, , 0, False, +1.00, 4, 1, 112, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CRT_A10"
      InputType       =   4
      Left            =   108
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   213
      Visible         =   True
      Width           =   112
      _ClosingFired   =   False
   End
   Begin MobileLabel CRT_A10Label
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CRT_A10Label, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CRT_A10Label, 1, CFF_a10Label, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CRT_A10Label, 3, CFF_a10Label, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CRT_A10Label, 7, , 0, False, +1.00, 4, 1, 81, , True
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
      Text            =   "CRT_A10"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   215
      Visible         =   True
      Width           =   81
      _ClosingFired   =   False
   End
   Begin MobileTextField CKRField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CKRField, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   CKRField, 1, CKRLabel, 2, False, +1.00, 4, 1, *kStdControlGapH, , True
      AutoLayout      =   CKRField, 10, CKRLabel, 10, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   CKRField, 7, , 0, False, +1.00, 4, 1, 111, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CKR"
      InputType       =   4
      Left            =   108
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      ReturnCaption   =   0
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   ""
      TextColor       =   &c000000
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   263
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileLabel CKRLabel
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   2
      AutoLayout      =   CKRLabel, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   CKRLabel, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CKRLabel, 3, CRT_A10Label, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   CKRLabel, 7, , 0, False, +1.00, 4, 1, 80, , True
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
      Text            =   "CKR"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   265
      Visible         =   True
      Width           =   80
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(&cFFFDEE)
		  
		  // set up which fields to be seen according to Procedure Type
		  Select Case ProcedureType
		  Case "General"
		    
		  Case "Cardiac"
		    
		  End Select
		  
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events ButtonContinue
	#tag Event
		Sub Pressed()
		  
		  Var result As New TEGResult
		  result.CFF_A10 = CFF_A10Field.Text.ToDouble
		  result.CKR  =  CKRField.Text.ToDouble
		  result.CKH_R = CKH_RField.Text.ToDouble
		  result.CRT_A10 = CRT_A10Field.Text.ToDouble
		  result.CRT_LY30 = CRT_LY30Field.Text.ToDouble
		  
		  
		  
		  Var nextScreen As New AlgorithmStepScreen
		  nextScreen.Mode = "TEG"
		  nextScreen.TEGData = result
		  nextScreen.Show
		  
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

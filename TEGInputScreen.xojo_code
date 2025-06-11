#tag MobileScreen
Begin MobileScreen TEGInputScreen
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
   Title           =   "Untitled"
   Top             =   0
   Begin MobileTextField CKH_RField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   CKH_RField, 1, <Parent>, 1, False, +1.00, 4, 1, 149, , True
      AutoLayout      =   CKH_RField, 7, , 0, False, +1.00, 4, 1, 111, , True
      AutoLayout      =   CKH_RField, 3, <Parent>, 3, False, +1.00, 4, 1, 170, , True
      AutoLayout      =   CKH_RField, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter CKH-R"
      InputType       =   0
      Left            =   149
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
      Top             =   170
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileTextField LY30Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   LY30Field, 1, CKH_RField, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   LY30Field, 2, CKH_RField, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   LY30Field, 3, <Parent>, 3, False, +1.00, 4, 1, 235, , True
      AutoLayout      =   LY30Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "Enter LY30"
      InputType       =   0
      Left            =   149
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
      Top             =   235
      Visible         =   True
      Width           =   111
      _ClosingFired   =   False
   End
   Begin MobileButton ButtonContinue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonContinue, 1, <Parent>, 1, False, +1.00, 4, 1, 149, , True
      AutoLayout      =   ButtonContinue, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   ButtonContinue, 3, <Parent>, 3, False, +1.00, 4, 1, 388, , True
      AutoLayout      =   ButtonContinue, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Continue"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   149
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   388
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events ButtonContinue
	#tag Event
		Sub Pressed()
		  
		  Var result As New TEGResult
		  
		  result.CKH_R = CKH_RField.Text.ToDouble
		  result.LY30 = LY30Field.Text.ToDouble
		  
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

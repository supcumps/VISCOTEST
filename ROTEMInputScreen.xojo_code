#tag MobileScreen
Begin MobileScreen ROTEMInputScreen
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
   Title           =   "Rotem Input"
   Top             =   0
   Begin MobileTextField FIBTEM_A5Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   FIBTEM_A5Field, 3, <Parent>, 3, False, +1.00, 4, 1, 269, , True
      AutoLayout      =   FIBTEM_A5Field, 1, <Parent>, 1, False, +1.00, 4, 1, 129, , True
      AutoLayout      =   FIBTEM_A5Field, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   FIBTEM_A5Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "FIBTEM A5"
      InputType       =   0
      Left            =   129
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
      Top             =   269
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField EXTEM_A5Field
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   EXTEM_A5Field, 1, EXTEM_CTField, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   EXTEM_A5Field, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   EXTEM_A5Field, 4, FIBTEM_A5Field, 3, False, +1.00, 4, 1, -*kStdControlGapV, , True
      AutoLayout      =   EXTEM_A5Field, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "EXTEM A5"
      InputType       =   0
      Left            =   137
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      PanelIndex      =   -1
      Parent          =   ""
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
      Top             =   227
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField FIBTEM_MLField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   FIBTEM_MLField, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   FIBTEM_MLField, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   FIBTEM_MLField, 8, , 0, False, +1.00, 4, 1, 34, , True
      AutoLayout      =   FIBTEM_MLField, 4, , 0, False, +1.00, 4, 1, 429, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "FIBTEM ML"
      InputType       =   0
      Left            =   137
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      PanelIndex      =   -1
      Parent          =   ""
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
      Top             =   395
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileTextField EXTEM_CTField
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   0
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   EXTEM_CTField, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   EXTEM_CTField, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   EXTEM_CTField, 3, FIBTEM_A5Field, 4, False, +1.00, 4, 1, *kStdControlGapV, , True
      AutoLayout      =   EXTEM_CTField, 8, , 0, False, +1.00, 4, 1, 34, , True
      BorderStyle     =   3
      ControlCount    =   0
      Enabled         =   True
      Height          =   34
      Hint            =   "EXTEM CT"
      InputType       =   0
      Left            =   137
      LockedInPosition=   False
      MaximumCharactersAllowed=   0
      PanelIndex      =   -1
      Parent          =   ""
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
      Top             =   311
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton ButtonContinue
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonContinue, 3, <Parent>, 3, False, +1.00, 4, 1, 512, , True
      AutoLayout      =   ButtonContinue, 1, <Parent>, 1, False, +1.00, 4, 1, 195, , True
      AutoLayout      =   ButtonContinue, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   ButtonContinue, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Continue"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   195
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   512
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
		  Var result As New ROTEMResult
		  result.EXTEM_A5 = Extem_A5Field.Text.ToDouble
		  result.FIBTEM_A5 = Fibtem_A5Field.Text.ToDouble
		  result.EXTEM_CT = Extem_CTField.Text.ToDouble
		  result.FIBTEM_ML = Fibtem_MLField.Text.ToDouble
		  
		  
		  Var nextScreen As New AlgorithmStepScreen
		  nextScreen.Mode = "ROTEM"
		  nextScreen.ROTEMData = result
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

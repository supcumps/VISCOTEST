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
   TintColor       =   &c000000
   Title           =   "Start Screen"
   Top             =   0
   Begin MobileButton ButtonTEG
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonTEG, 1, <Parent>, 1, False, +1.00, 4, 1, 114, , True
      AutoLayout      =   ButtonTEG, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   ButtonTEG, 3, <Parent>, 3, False, +1.00, 4, 1, 142, , True
      AutoLayout      =   ButtonTEG, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "TEG"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   114
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   142
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileButton ButtonROTEM
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   ButtonROTEM, 1, ButtonTEG, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   ButtonROTEM, 7, , 0, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   ButtonROTEM, 3, <Parent>, 3, False, +1.00, 4, 1, 204, , True
      AutoLayout      =   ButtonROTEM, 8, , 0, False, +1.00, 4, 1, 30, , True
      Caption         =   "Rotem"
      CaptionColor    =   &c007AFF00
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   114
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   ""
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   204
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  // Setup buttons and interface if needed
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events ButtonTEG
	#tag Event
		Sub Pressed()
		  Var TEGSreen As  New TEGInputScreen
		  
		  TEGSreen.Show()
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ButtonROTEM
	#tag Event
		Sub Pressed()
		  Var RotemScreen As  New ROTEMInputScreen
		  RotemScreen.Show
		  
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

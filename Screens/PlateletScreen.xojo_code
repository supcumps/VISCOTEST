#tag MobileScreen
Begin MobileScreen PlateletScreen
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
   Title           =   "Platelets"
   Top             =   0
   Begin MobileImageViewer MultiplateImageViewer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   MultiplateImageViewer, 8, , 0, False, +1.00, 4, 1, 310, , True
      AutoLayout      =   MultiplateImageViewer, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MultiplateImageViewer, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   MultiplateImageViewer, 3, <Parent>, 3, False, +1.00, 4, 1, 86, , True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   310
      Image           =   1081632767
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   86
      URL             =   ""
      Visible         =   True
      Width           =   375
      _ClosingFired   =   False
   End
   Begin MobileButton GetPDFButton
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   GetPDFButton, 9, <Parent>, 9, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   GetPDFButton, 8, , 0, False, +1.00, 4, 1, 30, , True
      AutoLayout      =   GetPDFButton, 3, PlateletsImageViewer, 4, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   GetPDFButton, 7, , 0, False, +1.00, 4, 1, 100, , True
      Caption         =   "Platelet PDF"
      CaptionColor    =   &c00000000
      ControlCount    =   0
      Enabled         =   True
      Height          =   30
      Left            =   137
      LockedInPosition=   False
      Scope           =   0
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   680
      Visible         =   True
      Width           =   100
      _ClosingFired   =   False
   End
   Begin MobileImageViewer PlateletsImageViewer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   PlateletsImageViewer, 8, , 0, False, +1.00, 4, 1, 244, , True
      AutoLayout      =   PlateletsImageViewer, 1, <Parent>, 1, False, +1.00, 4, 1, *kStdGapCtlToViewH, , True
      AutoLayout      =   PlateletsImageViewer, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   PlateletsImageViewer, 3, MultiplateImageViewer, 4, False, +1.00, 4, 1, 20, , True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   244
      Image           =   482650111
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   416
      URL             =   ""
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.SetBackgroundColorXC(&cFFFDEE)
		End Sub
	#tag EndEvent


#tag EndWindowCode

#tag Events GetPDFButton
	#tag Event
		Sub Pressed()
		  
		  // to display the relevant .pdf
		  
		  messagebox("to be added")
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

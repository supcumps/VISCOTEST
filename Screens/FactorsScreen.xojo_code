#tag MobileScreen
Begin MobileScreen FactorsScreen
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
   Title           =   "Factors"
   Top             =   0
   Begin MobileTextArea FactorsTextArea
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      Alignment       =   1
      AllowAutoCorrection=   False
      AllowSpellChecking=   False
      AutoCapitalizationType=   0
      AutoLayout      =   FactorsTextArea, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   FactorsTextArea, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   FactorsTextArea, 3, TopLayoutGuide, 3, False, +1.00, 4, 1, 100, , True
      AutoLayout      =   FactorsTextArea, 8, , 0, False, +1.00, 4, 1, 49, , True
      BorderStyle     =   1
      ControlCount    =   0
      Enabled         =   True
      Height          =   49
      Left            =   20
      LockedInPosition=   False
      maximumCharactersAllowed=   0
      ReadOnly        =   True
      Scope           =   2
      SelectedText    =   ""
      SelectionLength =   0
      SelectionStart  =   0
      Text            =   "Low Coagulation Factors or Oral anticoagulants (Warfarin or DOACS)"
      TextColor       =   &c000000
      TextFont        =   "System Bold		"
      TextSize        =   0
      TintColor       =   &c000000
      Top             =   165
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
   Begin MobileImageViewer FactorsImageViewer
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AutoLayout      =   FactorsImageViewer, 8, , 0, False, +1.00, 4, 1, 251, , True
      AutoLayout      =   FactorsImageViewer, 1, <Parent>, 1, False, +1.00, 4, 1, 20, , True
      AutoLayout      =   FactorsImageViewer, 2, <Parent>, 2, False, +1.00, 4, 1, -*kStdGapCtlToViewH, , True
      AutoLayout      =   FactorsImageViewer, 3, FactorsTextArea, 4, False, +1.00, 4, 1, 20, , True
      ControlCount    =   0
      DisplayMode     =   0
      Enabled         =   True
      Height          =   251
      Image           =   994729983
      Left            =   20
      LockedInPosition=   False
      Scope           =   2
      TintColor       =   &c000000
      Top             =   234
      URL             =   ""
      Visible         =   True
      Width           =   335
      _ClosingFired   =   False
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode


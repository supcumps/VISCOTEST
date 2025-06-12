#tag Module
Protected Module ButtonExtensionsXC
	#tag Method, Flags = &h0, Description = 41646A757374732074686520666F6E742073697A65206163636F7264696E6720746F20617661696C61626C65207769647468
		Sub AdjustsFontSizeToFitWidthXC(extends bt As MobileButton, lines As Integer = -1)
		  
		  Dim label As ptr
		  
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  If lines > 0 Then
		    Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		    setNumberOfLines label, lines
		  End If
		  
		  Declare Sub setAdjustsFontSizeToFitWidth Lib "UIKit.framework" selector "setAdjustsFontSizeToFitWidth:" (id As ptr, value As Boolean)
		  setAdjustsFontSizeToFitWidth label, True
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865206261636B64726F7020696D616765206F662074686520627574746F6E2E
		Sub SetBackdropXC(extends bt as MobileButton, backdrop as Picture)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setBackgroundImage Lib "UIKit" selector "setBackgroundImage:forState:" (obj As ptr, value As ptr, state As Integer)
		  
		  if backdrop is nil then
		    setBackgroundImage(bt.Handle, nil, 0)
		    
		  else
		    Dim bestImage As Picture = ImageExtensionsXC.BestRepresentationXC(backdrop)
		    
		    setBackgroundImage(bt.Handle, bestImage.Handle, 0)
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBackgroundColorXC(Extends bt As MobileButton, value As color)
		  '// Function(SetBackgroundColorXC(Extends bt As MobileButton, value As color)
		  'Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  'Declare Function colorWithRGBA Lib "UIKit.framework" Selector "colorWithRed:green:blue:alpha:" ( UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  'Declare Function view Lib "UIKit.framework" Selector "view" (UIViewController As Ptr) As Ptr
		  'Declare Sub setBackgroundColor Lib "UIKit.framework" Selector "setBackgroundColor:" (UIView As Ptr, UIColor As Ptr)
		  '
		  'Dim UIColorClassPtr As Ptr =  NSClassFromString("UIColor")
		  'Dim colorPtr As Ptr = colorWithRGBA(UIColorClassPtr, (value.red / 255.0), (value.Green / 255.0), (value.Blue / 255.0), (1.0-value.Alpha/255.0))
		  'Dim viewPtr As Ptr = bt.Handle
		  'SetBackgroundColor(viewPtr, colorPtr)
		  
		  
		  // Function definition (likely declared earlier, not shown here):
		  // SetBackgroundColorXC(Extends bt As MobileButton, value As Color)
		  // Purpose: Sets the background color of a MobileButton to the given color.
		  
		  Declare Function NSClassFromString Lib "Foundation" (className As CFStringRef) As Ptr
		  // Calls Apple's Foundation framework to get a pointer (class reference) to the class named by a string.
		  // Here, it will be used to get a reference to the "UIColor" class.
		  
		  Declare Function colorWithRGBA Lib "UIKit.framework" Selector "colorWithRed:green:blue:alpha:" _
		  (UIColorClassRef As Ptr, red As CGFloat, green As CGFloat, blue As CGFloat, alpha As CGFloat) As Ptr
		  // Declares the Objective-C class method `+colorWithRed:green:blue:alpha:` on UIColor.
		  // This method returns a UIColor object with the specified RGBA values.
		  
		  Declare Function view Lib "UIKit.framework" Selector "view" (UIViewController As Ptr) As Ptr
		  // This declare is actually **not used** in the code you posted. Possibly left over from earlier code.
		  // It would get the UIView of a UIViewController, but MobileButton is a UIView subclass already.
		  
		  Declare Sub setBackgroundColor Lib "UIKit.framework" Selector "setBackgroundColor:" _
		  (UIView As Ptr, UIColor As Ptr)
		  // Declares the Objective-C instance method `-setBackgroundColor:`
		  // It sets the background color of a UIView (including UIButton, which is a subclass).
		  
		  Dim UIColorClassPtr As Ptr = NSClassFromString("UIColor")
		  // Gets a pointer to the UIColor class so we can call class methods on it.
		  // Equivalent to: UIColor.self in Swift/Objective-C.
		  
		  Dim colorPtr As Ptr = colorWithRGBA(UIColorClassPtr, (value.Red / 255.0), (value.Green / 255.0), (value.Blue / 255.0), (1.0 - value.Alpha / 255.0))
		  // Creates a UIColor pointer using the given color value's RGB components, normalized to 0.0–1.0.
		  // Note: Xojo's Color.Alpha is 0 (opaque) to 255 (transparent), while UIKit uses 1.0 (opaque) to 0.0 (transparent).
		  // Hence the (1.0 - Alpha/255.0) transformation.
		  
		  Dim viewPtr As Ptr = bt.Handle
		  // Gets a pointer to the actual UIKit UIButton (UIView) that backs the Xojo MobileButton.
		  
		  SetBackgroundColor(viewPtr, colorPtr)
		  // Sets the background color of the UIButton by calling setBackgroundColor: with the UIColor we created.
		  
		  'Summary:
		  '
		  'This extension method allows you To Do what Xojo’s MobileButton does Not natively support — directly setting 
		  'the button background Color. It uses Declare statements To tap into Objective-C APIs In UIKit, 
		  'And manipulates UIKit-level views through their memory pointers (Ptr), 
		  'letting you apply fine-grained customization like native iOS developers Do In Swift Or Objective-C.
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderColorXC(extends bt As MobileButton, value As Color)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  Dim uic As UIKit.UIColor
		  If value.Alpha = 255 Then
		    uic = UIKit.UIColor.ClearColor
		  Else
		    uic = New UIColor(value)
		  End If 
		  
		  declare sub setBorderColor lib "UIKit.framework" selector "setBorderColor:" (obj_id as ptr, col as ptr)
		  setBorderColor(layer, uic.CGColor)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetBorderWidthXC(extends bt As MobileButton, value As Double)
		  
		  
		  Declare Function layer_ Lib "UIKit.framework" selector "layer" (id As ptr) As Ptr
		  Dim layer As ptr = layer_(bt.Handle)
		  
		  
		  Declare Sub setBorderWidth Lib "UIKit.framework" selector "setBorderWidth:" (obj_id As ptr, st As CGFloat)
		  setBorderWidth(layer, value)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setContentEdgeInsets Lib "UIKit.framework" selector "setContentEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setContentEdgeInsets (bt.handle, value)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetButtonTiledBackgroundXC(extends bt As MobileButton, img As Picture)
		  
		  
		  
		  
		  Dim insets As ExtensionsXC.xcUIEdgeInsets
		  insets.Left = 12
		  insets.Top = 12
		  insets.Bottom = 12
		  insets.Right = 12
		  
		  Dim resizedImg as Picture
		  
		  resizedImg = ImageExtensionsXC.ResizableTiledImageXC(insets, img)
		  
		  
		  bt.SetBackdropXC(resizedImg)
		  
		  bt.SetButtonInsetsXC(insets)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetImageInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  
		  Declare Sub setImageEdgeInsets Lib "UIKit.framework" selector "setImageEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setImageEdgeInsets (bt.handle, value)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 5365747320746865205069637475726520746F2062652075736564206E65787420746F207468652063617074696F6E2E
		Sub SetImageXC(extends bt As MobileButton, image As Picture, state As ControlExtensionsXC.UIControlState = ControlExtensionsXC.UIControlState.normal)
		  'This method was posted by Jim McKay in the https://forum.xojo.com/18184-button-and-view-colours-ios/last thread
		  'on 12/12/2014
		  
		  Declare Sub setImage Lib "UIKit.framework" selector "setImage:forState:" (obj As ptr, value As ptr, state As ControlExtensionsXC.UIControlState)
		  
		  If image Is Nil Then
		    setImage(bt.Handle, Nil, state)
		  Else
		    Dim bestImg As Picture = ImageExtensionsXC.BestRepresentationXC(image)
		    
		    setImage(bt.Handle, bestImg.Handle, state)
		    
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLineBreakModeXC(extends bt As MobileButton, mode As ControlExtensionsXC.NSLineBreakMode)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  Declare Sub setLineBreakMode Lib "UIKit.framework" selector "setLineBreakMode:" (id As ptr, value As ControlExtensionsXC.NSLineBreakMode)
		  setLineBreakMode label, mode
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetNumberOfLinesXC(extends bt As MobileButton, lines As Integer)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  'setTextAlignment(label, NSTextAlignment.center)
		  
		  Declare Sub setNumberOfLines Lib "UIKit.framework" selector "setNumberOfLines:" (id As ptr, value As Integer)
		  setNumberOfLines label, lines
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRoleXC(extends bt As MobileButton, value As ButtonExtensionsXC.UIButtonRole)
		  //New in version 2.0
		  
		  
		  if ExtensionsXC.GetiOSVersionXC >= 14.0 then
		    Declare Sub setRole Lib "UIKit.framework" selector "setRole:" (obj_id As ptr, aRole As UIButtonRole)
		    setRole(bt.handle, value)
		    
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTextAlignmentXC(extends bt As MobileButton, alignment As ControlExtensionsXC.NSTextAlignment)
		  Dim label As ptr
		  Declare Function getTextLabel Lib "UIKit.framework" selector "titleLabel" (obj_ref As ptr) As ptr
		  label = getTextLabel(bt.Handle)
		  
		  
		  Declare Sub setTextAlignment Lib "UIKit.framework" selector "setTextAlignment:" (id As ptr, value As ControlExtensionsXC.NSTextAlignment)
		  setTextAlignment(label, alignment)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetTitleEdgeInsetsXC(extends bt As MobileButton, value As ExtensionsXC.xcUIEdgeInsets)
		  
		  Declare Sub setTitleEdgeInsets_ Lib "UIKit.framework" selector "setTitleEdgeInsets:" (id As ptr, value As ExtensionsXC.xcUIEdgeInsets)
		  setTitleEdgeInsets_ (bt.handle, value)
		  
		End Sub
	#tag EndMethod


	#tag Enum, Name = UIButtonRole, Type = Integer, Flags = &h0
		normal = 0
		  primary
		  cancel
		destructive
	#tag EndEnum


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
	#tag EndViewBehavior
End Module
#tag EndModule

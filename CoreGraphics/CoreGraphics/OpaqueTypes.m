//
//  OpaqueTypes.m
//  CoreGraphics
//
//  Created by tigerfly on 2020/12/8.
//  Copyright © 2020 tigerfly. All rights reserved.
//

#import "OpaqueTypes.h"

@interface OpaqueTypes ()

@end

@implementation OpaqueTypes

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- CGBitmapContext
    
    /*
     A type of CGContextRef that you can use for drawing
     bits to memory.

     The number of components for each pixel in a bitmap
     graphics context is specified by a color space,
     defined by a CGColorSpaceRef. The bitmap graphics
     context specifies whether the bitmap should contain
     an alpha channel, and how the bitmap is generated.
     */
    
    /**
     Creating Bitmap Contexts
     */
//    CGBitmapContextCreate(<#void * _Nullable data#>, <#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bytesPerRow#>, <#CGColorSpaceRef  _Nullable space#>, <#uint32_t bitmapInfo#>)
//    CGBitmapContextCreateWithData(<#void * _Nullable data#>, <#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bytesPerRow#>, <#CGColorSpaceRef  _Nullable space#>, <#uint32_t bitmapInfo#>, <#CGBitmapContextReleaseDataCallback  _Nullable releaseCallback#>, <#void * _Nullable releaseInfo#>)
//    CGBitmapContextCreateImage(<#CGContextRef  _Nullable context#>)
    
    
    /**
     Getting Information About Bitmap Contexts
     
     These functions return the values of attributes
     specified when a bitmap context is created.
     */
        
//    CGBitmapContextGetBitmapInfo(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetAlphaInfo(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetBitsPerComponent(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetBitsPerPixel(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetBytesPerRow(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetColorSpace(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetData(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetHeight(<#CGContextRef  _Nullable context#>)
//    CGBitmapContextGetWidth(<#CGContextRef  _Nullable context#>)
    
    /**
     Data types
     */
//    CGBitmapContextReleaseDataCallback
    
    
#pragma mark -- CGColor
    
    /*
     A set of components that define a color, with a color
     space specifying how to interpret them.

     Color objects provide a fast and convenient way to
     manage and set colors, especially colors that are
     used repeatedly. Drawing operations use color objects
     for setting fill and stroke colors, managing alpha,
     and setting color with a pattern.
     */
    
    /**
     Getting a Constant Color -- iOS 14
     */
//    CGColorGetConstantColor
    
    /**
     Retaining and Releasing Color Objects
     */
//    CGColorRelease(<#CGColorRef  _Nullable color#>)
//    CGColorRetain(<#CGColorRef  _Nullable color#>)
    
    /**
     Creating Color Objects
     */
//    CGColorCreate(<#CGColorSpaceRef  _Nullable space#>, <#const CGFloat * _Nullable components#>)
//    CGColorCreateCopy(<#CGColorRef  _Nullable color#>)
//    CGColorCreateGenericGrayGamma2_2(<#CGFloat gray#>, <#CGFloat alpha#>)
//    CGColorCreateSRGB(<#CGFloat red#>, <#CGFloat green#>, <#CGFloat blue#>, <#CGFloat alpha#>)
//    CGColorCreateCopyWithAlpha(<#CGColorRef  _Nullable color#>, <#CGFloat alpha#>)
//    CGColorCreateWithPattern(<#CGColorSpaceRef  _Nullable space#>, <#CGPatternRef  _Nullable pattern#>, <#const CGFloat * _Nullable components#>)
//    CGColorCreateCopyByMatchingToColorSpace(<#CGColorSpaceRef _Nullable#>, <#CGColorRenderingIntent intent#>, <#CGColorRef  _Nullable color#>, <#CFDictionaryRef  _Nullable options#>)
    
    /**
     Getting Information about Core Graphics Colors
     */
//    CGColorEqualToColor(<#CGColorRef  _Nullable color1#>, <#CGColorRef  _Nullable color2#>)
//    CGColorGetAlpha(<#CGColorRef  _Nullable color#>)
//    CGColorGetColorSpace(<#CGColorRef  _Nullable color#>)
//    CGColorGetComponents(<#CGColorRef  _Nullable color#>)
//    CGColorGetNumberOfComponents(<#CGColorRef  _Nullable color#>)
//    CGColorGetPattern(<#CGColorRef  _Nullable color#>)
//    CGColorGetTypeID()
    
    /**
     Data Types
     */
//    CGColorRef
    
    
#pragma mark -- CGColorConversionInfo
    
    /*
     An object that describes how to convert between color
     spaces for use by other system services.

     A CGColorConversionInfoRef object specifies a conversion
     between two or more color spaces, including information
     about the intent of the conversion. You use color conversion
     objects to specify the work to be done by an MPSImageConversion
     filter, which can then perform GPU-accelerated image conversion.
     */
    
    /**
     Creating a Color Conversion
     */
//    CGColorConversionInfoCreate(<#CGColorSpaceRef  _Nullable src#>, <#CGColorSpaceRef  _Nullable dst#>)
//    CGColorConversionInfoCreateFromList(<#CFDictionaryRef  _Nullable options#>, <#CGColorSpaceRef _Nullable#>, <#CGColorConversionInfoTransformType#>, <#CGColorRenderingIntent, ...#>)
//    CGColorConversionInfoTransformType
    
    /**
     Color Conversion Options
     
     Use these keys in the options dictionary when calling
     CGColorConversionInfoCreateFromList.
     */
//    kCGColorConversionBlackPointCompensation
    
    /**
     Working with Core Foundation Types
     */
//    CGColorConversionInfoGetTypeID()
    
    /**
     Data Types
     */
//    CGColorConversionInfoRef
    
    
#pragma mark -- CGColorSpace
    
    /*
     A profile that specifies how to interpret a color value
     for display.

     A color space is multi-dimensional, and each dimension
     represents a specific color component. For example, the
     colors in an RGB color space have three dimensions or
     components—red, green, and blue. The intensity of each
     component is represented by floating point values—their
     range and meaning depends on the color space in question.
     
     Different types of devices (scanners, monitors, printers)
     operate within different color spaces (RGB, CMYK, grayscale).
     Additionally, two devices of the same type (for example,
     color displays from different manufacturers) may operate
     within the same kind of color space, yet still produce a
     different range of colors, or gamut. Color spaces that
     are correctly specified ensure that an image has a consistent
     appearance regardless of the output device.
     
     Core Graphics supports several kinds of color spaces:
     •  Calibrated color spaces ensure that colors appear the
        same when displayed on different devices. The visual
        appearance of the color is preserved, as far as the
        capabilities of the device allow.
     •  Device-dependent color spaces are tied to the system
        of color representation of a particular device. Device
        color spaces are not recommended when high-fidelity color
        preservation is important.
     •  Special color spaces—indexed and pattern. An indexed color
        space contains a color table with up to 256 entries and a base
        color space to which the color table entries are mapped. Each
        entry in the color table specifies one color in the base
        color space. A pattern color space is used when stroking
        or filling with a pattern.
     */
 
    /**
     Creating Device-Independent Color Spaces
     */
//    CGColorSpaceCreateCalibratedGray(<#const CGFloat * _Nonnull whitePoint#>, <#const CGFloat * _Nullable blackPoint#>, <#CGFloat gamma#>)
//    CGColorSpaceCreateCalibratedRGB(<#const CGFloat * _Nonnull whitePoint#>, <#const CGFloat * _Nullable blackPoint#>, <#const CGFloat * _Nullable gamma#>, <#const CGFloat * _Nullable matrix#>)
//    CGColorSpaceCreateLab(<#const CGFloat * _Nonnull whitePoint#>, <#const CGFloat * _Nullable blackPoint#>, <#const CGFloat * _Nullable range#>)
    
    /**
     Creating Ceneric or Device-Dependent Color Spaces
     */
//    CGColorSpaceCreateDeviceCMYK()
//    CGColorSpaceCreateDeviceGray()
//    CGColorSpaceCreateDeviceRGB()
//    CGColorSpaceCreateWithPlatformColorSpace(<#const void * _Nullable ref#>)

    
    /**
     Creating Special Color Spaces
     */
//    CGColorSpaceCreateIndexed(<#CGColorSpaceRef  _Nullable baseSpace#>, <#size_t lastIndex#>, <#const unsigned char * _Nullable colorTable#>)
//    CGColorSpaceCreatePattern(<#CGColorSpaceRef  _Nullable baseSpace#>)
//    CGColorSpaceCreateWithName(<#CFStringRef  _Nullable name#>)
    
    
    /**
     Getting Information About Color Spaces
     */
//    CGColorSpaceCopyICCData(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceSupportsOutput(<#CGColorSpaceRef  _Nonnull space#>)
//    CGColorSpaceGetNumberOfComponents(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceGetTypeID()
//    CGColorSpaceGetModel(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceIsWideGamutRGB(<#CGColorSpaceRef _Nonnull#>)
//    CGColorSpaceGetBaseColorSpace(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceGetColorTableCount(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceGetColorTable(<#CGColorSpaceRef  _Nullable space#>, <#uint8_t * _Nullable table#>)
//    CGColorSpaceCopyName(<#CGColorSpaceRef  _Nullable space#>)
    
    
    /**
     Retaining and Releasing Color Spaces
     */
//    CGColorSpaceRelease(<#CGColorSpaceRef  _Nullable space#>)
//    CGColorSpaceRetain(<#CGColorSpaceRef  _Nullable space#>)
    
    
    /**
     Data Types
     */
//    CGColorSpaceModel
//    CGColorRenderingIntent
//    CGColorSpaceRef
    
    
    
#pragma mark -- CGContext
    
    /*
     A Quartz 2D drawing destination.

     A graphics context contains drawing parameters and
     all device-specific information needed to render the
     paint on a page to the destination, whether the destination
     is a window in an application, a bitmap image, a PDF
     document, or a printer. You can obtain a graphics context
     by using Quartz graphics context creation functions or
     by using higher-level functions provided in the Carbon,
     Cocoa, or Printing frameworks. Quartz provides creation
     functions for various flavors of Quartz graphics contexts
     including bitmap images and PDF. The Cocoa framework
     provides functions for obtaining window graphics contexts.
     The Printing framework provides functions that obtain a
     graphics context appropriate for the destination printer.
     */
    
    /**
     Managing Graphics Contexts
     */
//    CGContextFlush(<#CGContextRef  _Nullable c#>)
//    CGContextGetTypeID()
//    CGContextRelease(<#CGContextRef  _Nullable c#>)
//    CGContextRetain(<#CGContextRef  _Nullable c#>)
//    CGContextSynchronize(<#CGContextRef  _Nullable c#>)
    
    /**
     Saving and Restoring the Current Graphics State
     */
//    CGContextSaveGState(<#CGContextRef  _Nullable c#>)
//    CGContextRestoreGState(<#CGContextRef  _Nullable c#>)
    
    
    /**
     Getting and Setting Graphics State Parameters
     */
//    CGContextGetInterpolationQuality(<#CGContextRef  _Nullable c#>)
//    CGContextSetFlatness(<#CGContextRef  _Nullable c#>, <#CGFloat flatness#>)
//    CGContextSetInterpolationQuality(<#CGContextRef  _Nullable c#>, <#CGInterpolationQuality quality#>)
//    CGContextSetLineCap(<#CGContextRef  _Nullable c#>, <#CGLineCap cap#>)
//    CGContextSetLineDash(<#CGContextRef  _Nullable c#>, <#CGFloat phase#>, <#const CGFloat * _Nullable lengths#>, <#size_t count#>)
//    CGContextSetLineJoin(<#CGContextRef  _Nullable c#>, <#CGLineJoin join#>)
//    CGContextSetLineWidth(<#CGContextRef  _Nullable c#>, <#CGFloat width#>)
//    CGContextSetMiterLimit(<#CGContextRef  _Nullable c#>, <#CGFloat limit#>)
//    CGContextSetPatternPhase(<#CGContextRef  _Nullable c#>, <#CGSize phase#>)
//    CGContextSetFillPattern(<#CGContextRef  _Nullable c#>, <#CGPatternRef  _Nullable pattern#>, <#const CGFloat * _Nullable components#>)
//    CGContextSetRenderingIntent(<#CGContextRef  _Nullable c#>, <#CGColorRenderingIntent intent#>)
//    CGContextSetShouldAntialias(<#CGContextRef  _Nullable c#>, <#bool shouldAntialias#>)
//    CGContextSetStrokePattern(<#CGContextRef  _Nullable c#>, <#CGPatternRef  _Nullable pattern#>, <#const CGFloat * _Nullable components#>)
//    CGContextSetBlendMode(<#CGContextRef  _Nullable c#>, <#CGBlendMode mode#>)
//    CGContextSetAllowsAntialiasing(<#CGContextRef  _Nullable c#>, <#bool allowsAntialiasing#>)
//    CGContextSetAllowsFontSmoothing(<#CGContextRef  _Nullable c#>, <#bool allowsFontSmoothing#>)
//    CGContextSetShouldSmoothFonts(<#CGContextRef  _Nullable c#>, <#bool shouldSmoothFonts#>)
//    CGContextSetAllowsFontSubpixelPositioning(<#CGContextRef  _Nullable c#>, <#bool allowsFontSubpixelPositioning#>)
//    CGContextSetShouldSubpixelPositionFonts(<#CGContextRef  _Nullable c#>, <#bool shouldSubpixelPositionFonts#>)
//    CGContextSetAllowsFontSubpixelQuantization(<#CGContextRef  _Nullable c#>, <#bool allowsFontSubpixelQuantization#>)
//    CGContextSetShouldSubpixelQuantizeFonts(<#CGContextRef  _Nullable c#>, <#bool shouldSubpixelQuantizeFonts#>)
    
    
    /**
     Constructing Paths
     
     These functions are used to define the geometry of the
     current path, For more information on how paths are
     defined, see CGPath,
     */
//    CGContextAddArc(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>, <#CGFloat radius#>, <#CGFloat startAngle#>, <#CGFloat endAngle#>, <#int clockwise#>)
//    CGContextAddArcToPoint(<#CGContextRef  _Nullable c#>, <#CGFloat x1#>, <#CGFloat y1#>, <#CGFloat x2#>, <#CGFloat y2#>, <#CGFloat radius#>)
//    CGContextAddCurveToPoint(<#CGContextRef  _Nullable c#>, <#CGFloat cp1x#>, <#CGFloat cp1y#>, <#CGFloat cp2x#>, <#CGFloat cp2y#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGContextAddLines(<#CGContextRef  _Nullable c#>, <#const CGPoint * _Nullable points#>, <#size_t count#>)
//    CGContextAddLineToPoint(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGContextAddPath(<#CGContextRef  _Nullable c#>, <#CGPathRef  _Nullable path#>)
//    CGContextCopyPath(<#CGContextRef  _Nullable c#>)
//    CGContextAddQuadCurveToPoint(<#CGContextRef  _Nullable c#>, <#CGFloat cpx#>, <#CGFloat cpy#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGContextAddRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextAddRects(<#CGContextRef  _Nullable c#>, <#const CGRect * _Nullable rects#>, <#size_t count#>)
//    CGContextBeginPath(<#CGContextRef  _Nullable c#>)
//    CGContextClosePath(<#CGContextRef  _Nullable c#>)
//    CGContextMoveToPoint(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGContextAddEllipseInRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
    
    
    /**
     Painting Paths
     
     These functions are used to stroke along or fill in the
     current path.
     */
//    CGContextClearRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextDrawPath(<#CGContextRef  _Nullable c#>, <#CGPathDrawingMode mode#>)
//    CGContextEOFillPath(<#CGContextRef  _Nullable c#>)
//    CGContextFillPath(<#CGContextRef  _Nullable c#>)
//    CGContextFillRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextFillRects(<#CGContextRef  _Nullable c#>, <#const CGRect * _Nullable rects#>, <#size_t count#>)
//    CGContextFillEllipseInRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextStrokePath(<#CGContextRef  _Nullable c#>)
//    CGContextStrokeRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextStrokeRectWithWidth(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CGFloat width#>)
//    CGContextReplacePathWithStrokedPath(<#CGContextRef  _Nullable c#>)
//    CGContextStrokeEllipseInRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//CGContextStrokeLineSegments(<#CGContextRef  _Nullable c#>, <#const CGPoint * _Nullable points#>, <#size_t count#>)
    
    
    /**
     Getting information About Paths
     */
//    CGContextIsPathEmpty(<#CGContextRef  _Nullable c#>)
//    CGContextGetPathCurrentPoint(<#CGContextRef  _Nullable c#>)
//    CGContextGetPathBoundingBox(<#CGContextRef  _Nullable c#>)
//    CGContextPathContainsPoint(<#CGContextRef  _Nullable c#>, <#CGPoint point#>, <#CGPathDrawingMode mode#>)
    
    
    /**
     Modifying Clipping Paths
     */
//    CGContextClip(<#CGContextRef  _Nullable c#>)
//    CGContextEOClip(<#CGContextRef  _Nullable c#>)
//    CGContextClipToRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextClipToRects(<#CGContextRef  _Nullable c#>, <#const CGRect * _Nonnull rects#>, <#size_t count#>)
//    CGContextGetClipBoundingBox(<#CGContextRef  _Nullable c#>)
//    CGContextClipToMask(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CGImageRef  _Nullable mask#>)
    
    
    /**
     Setting Color, Color Space, and Shadow Values
     */
//    CGContextSetAlpha(<#CGContextRef  _Nullable c#>, <#CGFloat alpha#>)
//    CGContextSetCMYKFillColor(<#CGContextRef  _Nullable c#>, <#CGFloat cyan#>, <#CGFloat magenta#>, <#CGFloat yellow#>, <#CGFloat black#>, <#CGFloat alpha#>)
//    CGContextSetFillColor(<#CGContextRef  _Nullable c#>, <#const CGFloat * _Nullable components#>)
//    CGContextSetCMYKStrokeColor(<#CGContextRef  _Nullable c#>, <#CGFloat cyan#>, <#CGFloat magenta#>, <#CGFloat yellow#>, <#CGFloat black#>, <#CGFloat alpha#>)
//    CGContextSetFillColorSpace(<#CGContextRef  _Nullable c#>, <#CGColorSpaceRef  _Nullable space#>)
//    CGContextSetFillColorWithColor(<#CGContextRef  _Nullable c#>, <#CGColorRef  _Nullable color#>)
//    CGContextSetGrayFillColor(<#CGContextRef  _Nullable c#>, <#CGFloat gray#>, <#CGFloat alpha#>)
//    CGContextSetGrayStrokeColor(<#CGContextRef  _Nullable c#>, <#CGFloat gray#>, <#CGFloat alpha#>)
//    CGContextSetRGBFillColor(<#CGContextRef  _Nullable c#>, <#CGFloat red#>, <#CGFloat green#>, <#CGFloat blue#>, <#CGFloat alpha#>)
//    CGContextSetRGBStrokeColor(<#CGContextRef  _Nullable c#>, <#CGFloat red#>, <#CGFloat green#>, <#CGFloat blue#>, <#CGFloat alpha#>)
//    CGContextSetShadow(<#CGContextRef  _Nullable c#>, <#CGSize offset#>, <#CGFloat blur#>)
//    CGContextSetShadowWithColor(<#CGContextRef  _Nullable c#>, <#CGSize offset#>, <#CGFloat blur#>, <#CGColorRef  _Nullable color#>)
//    CGContextSetStrokeColor(<#CGContextRef  _Nullable c#>, <#const CGFloat * _Nullable components#>)
//    CGContextSetStrokeColorSpace(<#CGContextRef  _Nullable c#>, <#CGColorSpaceRef  _Nullable space#>)
//    CGContextSetStrokeColorWithColor(<#CGContextRef  _Nullable c#>, <#CGColorRef  _Nullable color#>)
    
    
    /**
     Transforming User Space

     These functions allow you to examine and change the current
     transformation matrix(CTM) in a graphics context.
     */
//    CGContextConcatCTM(<#CGContextRef  _Nullable c#>, <#CGAffineTransform transform#>)
//    CGContextGetCTM(<#CGContextRef  _Nullable c#>)
//    CGContextRotateCTM(<#CGContextRef  _Nullable c#>, <#CGFloat angle#>)
//    CGContextScaleCTM(<#CGContextRef  _Nullable c#>, <#CGFloat sx#>, <#CGFloat sy#>)
//    CGContextTranslateCTM(<#CGContextRef  _Nullable c#>, <#CGFloat tx#>, <#CGFloat ty#>)
    
    
    /**
     Using Transparency Layers
     */
//    CGContextBeginTransparencyLayer(<#CGContextRef  _Nullable c#>, <#CFDictionaryRef  _Nullable auxiliaryInfo#>)
//    CGContextBeginTransparencyLayerWithRect(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CFDictionaryRef  _Nullable auxInfo#>)
//    CGContextEndTransparencyLayer(<#CGContextRef  _Nullable c#>)
 
    
    /**
     Drawing an Image to a Graphics Context
     */
//    CGContextDrawTiledImage(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CGImageRef  _Nullable image#>)
//    CGContextDrawImage(<#CGContextRef  _Nullable c#>, <#CGRect rect#>, <#CGImageRef  _Nullable image#>)
    
    /**
     Drawing PDF Content to a Graphics Context
     */
//    CGContextDrawPDFPage(<#CGContextRef  _Nullable c#>, <#CGPDFPageRef  _Nullable page#>)
    
    /**
     Drawing With a Gradient
     */
//    CGContextDrawLinearGradient(<#CGContextRef  _Nullable c#>, <#CGGradientRef  _Nullable gradient#>, <#CGPoint startPoint#>, <#CGPoint endPoint#>, <#CGGradientDrawingOptions options#>)
//    CGContextDrawRadialGradient(<#CGContextRef  _Nullable c#>, <#CGGradientRef  _Nullable gradient#>, <#CGPoint startCenter#>, <#CGFloat startRadius#>, <#CGPoint endCenter#>, <#CGFloat endRadius#>, <#CGGradientDrawingOptions options#>)
    
    /**
     Drawing With a Shading
     */
//    CGContextDrawShading(<#CGContextRef  _Nullable c#>, <#CGShadingRef  _Nullable shading#>)
    
    
    /**
     Setting Up a Page-Based Graphics Context
     */
//    CGContextBeginPage(<#CGContextRef  _Nullable c#>, <#const CGRect * _Nullable mediaBox#>)
//    CGContextEndPage(<#CGContextRef  _Nullable c#>)
    
    
    /**
     Drawing Text
     */
//    CGContextGetTextMatrix(<#CGContextRef  _Nullable c#>)
//    CGContextGetTextPosition(<#CGContextRef  _Nullable c#>)
//    CGContextSetCharacterSpacing(<#CGContextRef  _Nullable c#>, <#CGFloat spacing#>)
//    CGContextSetFont(<#CGContextRef  _Nullable c#>, <#CGFontRef  _Nullable font#>)
//    CGContextSetFontSize(<#CGContextRef  _Nullable c#>, <#CGFloat size#>)
//    CGContextSetTextDrawingMode(<#CGContextRef  _Nullable c#>, <#CGTextDrawingMode mode#>)
//    CGContextSetTextMatrix(<#CGContextRef  _Nullable c#>, <#CGAffineTransform t#>)
//    CGContextSetTextPosition(<#CGContextRef  _Nullable c#>, <#CGFloat x#>, <#CGFloat y#>)
    
    
    /**
     Converting Between Device Space and User Space
     */
//    CGContextGetUserSpaceToDeviceSpaceTransform(<#CGContextRef  _Nullable c#>)
//    CGContextConvertPointToDeviceSpace(<#CGContextRef  _Nullable c#>, <#CGPoint point#>)
//    CGContextConvertPointToUserSpace(<#CGContextRef  _Nullable c#>, <#CGPoint point#>)
//    CGContextConvertPointToDeviceSpace(<#CGContextRef  _Nullable c#>, <#CGPoint point#>)
//    CGContextConvertSizeToUserSpace(<#CGContextRef  _Nullable c#>, <#CGSize size#>)
//    CGContextConvertRectToDeviceSpace(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
//    CGContextConvertRectToUserSpace(<#CGContextRef  _Nullable c#>, <#CGRect rect#>)
    
    /**
     Data Types
     */
//    CGContextRef
    
    
#pragma mark -- CGDataConsumer
    
    /*
     An abstraction for data-writing tasks that eliminates the
     need to manage a raw memory buffer.
     
     Most apps should use CGImageDestination objects instead. See
     CGImageDestination.
     */
    
    /**
     Creating Data Consumers
     */
//    CGDataConsumerCreate(<#void * _Nullable info#>, <#const CGDataConsumerCallbacks * _Nullable cbks#>)
//    CGDataConsumerCreateWithURL(<#CFURLRef  _Nullable url#>)
//    CGDataConsumerCreateWithCFData(<#CFMutableDataRef  _Nullable data#>)
    
    /**
     Getting the CFType ID
     */
//    CGDataConsumerGetTypeID()
    
    /**
     Retaining and Releasing Data Consumers
     */
//    CGDataConsumerRelease(<#CGDataConsumerRef  _Nullable consumer#>)
//    CGDataConsumerRetain(<#CGDataConsumerRef  _Nullable consumer#>)
    
    /**
     Callbacks
     */
//    CGDataConsumerPutBytesCallback
//    CGDataConsumerReleaseInfoCallback
    
    /**
     Data Types
     */
//    CGDataConsumerCallbacks
//    CGDataConsumerRef
    
    
#pragma mark -- CGDataProvider
    
    /*
     An abstraction for data-reading tasks that eliminates the need
     to manage a raw memory buffer.
     
     Data provider objects abstract the data-access task and
     eliminate the need for applications to manage data through
     a raw memory buffer.
     For information on how to use CGDataProvider functions,
     see Quartz 2D Programming Guide Programming Guide.
     See also CGDataConsumer.
     */
    
    /**
     CGDataProviderMiscellaneousFunctions
     */
//    CGDataProviderCreateDirect(<#void * _Nullable info#>, <#off_t size#>, <#const CGDataProviderDirectCallbacks * _Nullable callbacks#>)
//    CGDataProviderCreateWithURL(<#CFURLRef  _Nullable url#>)
//    CGDataProviderCreateWithData(<#void * _Nullable info#>, <#const void * _Nullable data#>, <#size_t size#>, <#CGDataProviderReleaseDataCallback  _Nullable releaseData#>)
//    CGDataProviderCreateWithCFData(<#CFDataRef  _Nullable data#>)
//    CGDataProviderCreateWithFilename(<#const char * _Nullable filename#>)
//    CGDataProviderGetTypeID()
//    CGDataProviderCopyData(<#CGDataProviderRef  _Nullable provider#>)
//    CGDataProviderRelease(<#CGDataProviderRef  _Nullable provider#>)
//    CGDataProviderRetain(<#CGDataProviderRef  _Nullable provider#>)
//    CGDataProviderCreateSequential(<#void * _Nullable info#>, <#const CGDataProviderSequentialCallbacks * _Nullable callbacks#>)
        
    
    /**
     Callbacks
     */
    
//    CGDataProviderGetBytesCallback
//    CGDataProviderReleaseInfoCallback
//    CGDataProviderRewindCallback
//    CGDataProviderSkipForwardCallback
//    CGDataProviderGetBytePointerCallback
//    CGDataProviderGetBytesAtPositionCallback
//    CGDataProviderReleaseDataCallback
//    CGDataProviderReleaseBytePointerCallback
        
    /**
     Data Types
     */
//    CGDataProviderRef
//    CGDataProviderDirectCallbacks
//    CGDataProviderSequentialCallbacks


#pragma mark -- CGFont

    /*
     A set of character glyphs and layout information
     for drawing text.
     A font is a set fo shapes or glyphs associated with
     a character set. A glyph can repersent a single character
     (such as 'b'), more than one character(such as the
     'fi' ligature), or a special character such as a space.
     Core Graphics retrieves the glyphs based on the relevant
     parameters of the current graphics state.
     
     Core Graphics provides a limited, low-level interface
     for drawing text. For information on text-drawing
     functions, see CGContext. For full Unicode an text-layout
     support, use the services provided by TextKit).
     */
    
    /**
     Retaining and Releasing a CGFont Object
     */
//    CGFontRelease(<#CGFontRef  _Nullable font#>)
//    CGFontRetain(<#CGFontRef  _Nullable font#>)
    
    /**
     Creating a CGFont Object
     */
//    CGFontCreateWithDataProvider(<#CGDataProviderRef  _Nullable provider#>)
//    CGFontCreateWithFontName(<#CFStringRef  _Nullable name#>)
//    CGFontCreateCopyWithVariations(<#CGFontRef  _Nullable font#>, <#CFDictionaryRef  _Nullable variations#>)
    
    /**
     Working with PostScript Fonts
     */
//    CGFontCopyPostScriptName(<#CGFontRef  _Nullable font#>)
//CGFontCanCreatePostScriptSubset(<#CGFontRef  _Nullable font#>, <#CGFontPostScriptFormat format#>)
//    CGFontCreatePostScriptSubset(<#CGFontRef  _Nullable font#>, <#CFStringRef  _Nullable subsetName#>, <#CGFontPostScriptFormat format#>, <#const CGGlyph * _Nullable glyphs#>, <#size_t count#>, <#const CGGlyph * _Nullable encoding#>)
//    CGFontCreatePostScriptEncoding(<#CGFontRef  _Nullable font#>, <#const CGGlyph * _Nullable encoding#>)
    
    /**
     Working with Font Tables
     */
//    CGFontCopyTableTags(<#CGFontRef  _Nullable font#>)
//    CGFontCopyTableForTag(<#CGFontRef  _Nullable font#>, <#uint32_t tag#>)
    
    /**
     Getting Font Information
     */
//    CGFontGetTypeID()
//    CGFontCopyVariationAxes(<#CGFontRef  _Nullable font#>)
//    CGFontCopyVariations(<#CGFontRef  _Nullable font#>)
//    CGFontCopyFullName(<#CGFontRef  _Nullable font#>)
//    CGFontGetAscent(<#CGFontRef  _Nullable font#>)
//    CGFontGetDescent(<#CGFontRef  _Nullable font#>)
//    CGFontGetLeading(<#CGFontRef  _Nullable font#>)
//    CGFontGetCapHeight(<#CGFontRef  _Nullable font#>)
//    CGFontGetXHeight(<#CGFontRef  _Nullable font#>)
//    CGFontGetFontBBox(<#CGFontRef  _Nullable font#>)
//    CGFontGetItalicAngle(<#CGFontRef  _Nullable font#>)
//    CGFontGetStemV(<#CGFontRef  _Nullable font#>)
//    CGFontGetGlyphBBoxes(<#CGFontRef  _Nullable font#>, <#const CGGlyph * _Nonnull glyphs#>, <#size_t count#>, <#CGRect * _Nonnull bboxes#>)
//    CGFontGetGlyphWithGlyphName(<#CGFontRef  _Nullable font#>, <#CFStringRef  _Nullable name#>)
//    CGFontCopyGlyphNameForGlyph(<#CGFontRef  _Nullable font#>, <#CGGlyph glyph#>)
//    CGFontGetNumberOfGlyphs(<#CGFontRef  _Nullable font#>)
//    CGFontGetGlyphAdvances(<#CGFontRef  _Nullable font#>, <#const CGGlyph * _Nonnull glyphs#>, <#size_t count#>, <#int * _Nonnull advances#>)
//    CGFontGetUnitsPerEm(<#CGFontRef  _Nullable font#>)
    
    /**
     Data Types
     */
//    CGFontRef
//    CGFontIndex
//    CGGlyph
    
    
#pragma mark -- CGFunction
    
    /*
     A general facility for defining and using callback functions.
     
     These functions can take an arbitrary number of floating-point
     input values and pass back an arbitrary number of floating-point
     output values.
     
     Core Graphics uses CGFunctionRef objects to implement shadings.
     CGShading describes the parameters and semantics required for the
     callbacks used by CGFunctionRef objects.
     */
    
    /**
     Creating a CGFunction Object
    */
//    CGFunctionCreate(<#void * _Nullable info#>, <#size_t domainDimension#>, <#const CGFloat * _Nullable domain#>, <#size_t rangeDimension#>, <#const CGFloat * _Nullable range#>, <#const CGFunctionCallbacks * _Nullable callbacks#>)
    
    /**
     Retaining and Releasing CGFunction Objects
     */
//    CGFunctionRelease(<#CGFunctionRef  _Nullable function#>)
//    CGFunctionRetain(<#CGFunctionRef  _Nullable function#>)
    
    /**
     Getting the CFType ID
     */
//    CGFunctionGetTypeID()
    
    /**
     Callbacks
     */
//    CGFunctionEvaluateCallback
//    CGFunctionReleaseInfoCallback
    
    /**
     Data Types
     */
//    CGFunctionRef
//    CGFunctionCallbacks
    
    
#pragma mark -- CGGradient
    
    /**
     A definition for a smooth transition between colors for drawing
     radial and axial gradient fills.
     
     A gradient defines a smooth transition between colors across an
     area. A CGGradientRef object has a color space, two or more colors,
     and a location for each color. The color space cannot ne a pattern
     or indexed color space, otherwise it can be any Core Graphics color
     space (CGColorSpaceRef).
     
     Colors can be provided as component values(such as red, green, blue)
     or as Core Graphics color objects(CGColorRef). Component values can
     vary from 0.0 to 1.0, designating the proportion of the component
     present in the color.
     
     A location is a normalized value. When it comes time to paint the
     gradient, Core Graphics maps the normalized location values to the
     points in coordinate space that you provide.
     
     */
    
    /**
     Creating a CGGradient Object
     */
//    CGGradientCreateWithColorComponents(<#CGColorSpaceRef  _Nullable space#>, <#const CGFloat * _Nullable components#>, <#const CGFloat * _Nullable locations#>, <#size_t count#>)
//    CGGradientCreateWithColors(<#CGColorSpaceRef  _Nullable space#>, <#CFArrayRef  _Nullable colors#>, <#const CGFloat * _Nullable locations#>)
    
    
    /**
     Retaining and Releasing a CGGradient Object
     */
//    CGGradientRelease(<#CGGradientRef  _Nullable gradient#>)
//    CGGradientRetain(<#CGGradientRef  _Nullable gradient#>)
    
    /**
     Getting the Type ID for a CGGradient Object
     */
//    CGGradientGetTypeID()
    
    /**
     Data Types
     */
//    CGGradientRef
    
    /**
     Constants
     */
//    CGGradientDrawingOptions
    
    
#pragma mark -- CGImage
    
    /*
     A bitmap image or image mask.

     A bitmap (or sampled) image is a rectangular array of pixels,
     with each pixel representing a single sample or data point in
     a source image.
     */
    
    /**
     Creating Bitmap Images
     */
//    CGImageCreate(<#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bitsPerPixel#>, <#size_t bytesPerRow#>, <#CGColorSpaceRef  _Nullable space#>, <#CGBitmapInfo bitmapInfo#>, <#CGDataProviderRef  _Nullable provider#>, <#const CGFloat * _Nullable decode#>, <#bool shouldInterpolate#>, <#CGColorRenderingIntent intent#>)
//    CGImageCreateCopy(<#CGImageRef  _Nullable image#>)
//    CGImageCreateCopyWithColorSpace(<#CGImageRef  _Nullable image#>, <#CGColorSpaceRef  _Nullable space#>)
//    CGImageCreateWithJPEGDataProvider(<#CGDataProviderRef  _Nullable source#>, <#const CGFloat * _Nullable decode#>, <#bool shouldInterpolate#>, <#CGColorRenderingIntent intent#>)
//    CGImageCreateWithPNGDataProvider(<#CGDataProviderRef  _Nullable source#>, <#const CGFloat * _Nullable decode#>, <#bool shouldInterpolate#>, <#CGColorRenderingIntent intent#>)
//    CGImageCreateWithImageInRect(<#CGImageRef  _Nullable image#>, <#CGRect rect#>)
//    CGImageCreateWithMask(<#CGImageRef  _Nullable image#>, <#CGImageRef  _Nullable mask#>)
//    CGImageCreateWithMaskingColors(<#CGImageRef  _Nullable image#>, <#const CGFloat * _Nullable components#>)
    
    /**
     Creating an Image Mask
     */
//    CGImageMaskCreate(<#size_t width#>, <#size_t height#>, <#size_t bitsPerComponent#>, <#size_t bitsPerPixel#>, <#size_t bytesPerRow#>, <#CGDataProviderRef  _Nullable provider#>, <#const CGFloat * _Nullable decode#>, <#bool shouldInterpolate#>)
    
    /**
     Retaining and Releasing Images
     */
//    CGImageRetain(<#CGImageRef  _Nullable image#>)
//    CGImageRelease(<#CGImageRef  _Nullable image#>)
    
    /**
     Getting the CFTypeID
     */
//    CGImageGetTypeID()
    
    /**
     Getting information About an Image
     */
//    CGImageGetAlphaInfo(<#CGImageRef  _Nullable image#>)
//    CGImageGetBitmapInfo(<#CGImageRef  _Nullable image#>)
//    CGImageGetBitsPerComponent(<#CGImageRef  _Nullable image#>)
//    CGImageGetBitsPerPixel(<#CGImageRef  _Nullable image#>)
//    CGImageGetBytesPerRow(<#CGImageRef  _Nullable image#>)
//    CGImageGetColorSpace(<#CGImageRef  _Nullable image#>)
//    CGImageGetDataProvider(<#CGImageRef  _Nullable image#>)
//    CGImageGetDecode(<#CGImageRef  _Nullable image#>)
//    CGImageGetHeight(<#CGImageRef  _Nullable image#>)
//    CGImageGetShouldInterpolate(<#CGImageRef  _Nullable image#>)
//    CGImageGetRenderingIntent(<#CGImageRef  _Nullable image#>)
//    CGImageGetWidth(<#CGImageRef  _Nullable image#>)
//    CGImageIsMask(<#CGImageRef  _Nullable image#>)
    
    /**
     Data Types
     */
//    CGImageRef
    
    /**
     Constants
     */
//    CGImageAlphaInfo
//    CGBitmapInfo
    
    
#pragma mark -- CGLayer
    
    /*
     An offscreen context for reusing content drawn with Core Graphics.
     
     Layer objects are uesful for offscreen drawing and can be used
     in much the same way that a bitmap context can be used. In fact,
     a CGLayerRef object is a much better representation than a bitmap
     context.
     
     Using CGLayerRef objects can improve performance, particularly when
     you need to capture a piece of drawing that you stamp repeatedly
     (using the same scale factor and orientation). Core Graphics can
     cache CGLayerRef objects to the video card, making drawing a CGLayerRef
     to a destination much faster than rendering the equivalent image
     constructed from a bitmap context.
     
     A CGLayerRef object is created relative to a graphics context.
     Although layer uses this graphics context as a reference for
     intialization, you are not restricted to drawing the layer to
     this graphics context. You can draw the layer to other graphics
     contexts, although any limitations of the original context are
     imposed. For example, if you create a CGLayerRef object using
     a bitmap context, the layer is rendered as a bitmap when drawn
     to any other graphics context.
     
     You can use a CGLayerRef when you want to apply a shadow to a
     group of objects (such as a group of circles) rather than to
     individual objects.
     
     Use these layers in your code whenever you can, especially when:
     •  You need to reuse a filled or stroked shape.
     •  You are building a scene and at least some of it can be
        reused. Put the reusable drawing in its own layer.
     
     Any Core Graphics object that you draw repeatedly—including
     CGPathRef, CGShadingRef, and CGPDFPageRef objects—benefit
     from improved performance if you draw it to a CGLayerRef
     object.
     
     ⚠️ CGLayerRef objects are unrelated to Core Animation layers
     (CALayer objects).
     */
        
    /**
     Creating Layer Objects
     */
//    CGLayerCreateWithContext(<#CGContextRef  _Nullable context#>, <#CGSize size#>, <#CFDictionaryRef  _Nullable auxiliaryInfo#>)
    
    /**
     Drawing Layer Content
     */
//    CGContextDrawLayerInRect(<#CGContextRef  _Nullable context#>, <#CGRect rect#>, <#CGLayerRef  _Nullable layer#>)
//    CGContextDrawLayerAtPoint(<#CGContextRef  _Nullable context#>, <#CGPoint point#>, <#CGLayerRef  _Nullable layer#>)
    
    /**
     Retaining and Releasing Layers
     */
//    CGLayerRelease(<#CGLayerRef  _Nullable layer#>)
//    CGLayerRetain(<#CGLayerRef  _Nullable layer#>)
    
    /**
     Getting the CFType ID for a layer
     */
//    CGLayerGetTypeID()
    
    /**
     Getting Layer Information
     */
//    CGLayerGetSize(<#CGLayerRef  _Nullable layer#>)
//    CGLayerGetContext(<#CGLayerRef  _Nullable layer#>)
    
    /**
     Data Types
     */
//    CGLayerRef
    

#pragma mark -- CGPath
    
    /*
     Immutable and mutable types for graphics paths: mathematical
     descriptions of shapes or lines to be drawn in a graphics context.
     
     Neither CGPathRef nor CGMutablePathRef define functions to draw
     a path. To draw a Core Graphics path to a graphics context, you
     add the path to the graphics context by calling CGContextAddPath
     and then call one of the context's drawing functions -- see CGContext.
     
     Each figure in the graphics path is constructed with a connected set
     of lines and Bezier curves, called a subpath. A subpath has an ordered
     set of path elements that represent single steps in the construction of
     the subpath. (for example, a line segment from one corner of a rectangle
     to another corner is a path element. Every subpath includes a starting
     point, which is the first point in the subpath. The path also maintains a
     current point, which is the last point in the last subpath.)
     
     To append a new subpath onto a mutable path, your application typically
     calls CGPathMoveToPoint to set the subpath's starting point and initial
     current point, followed by a series of "add" call (such as CGPathAddLineToPoint)
     to add line segments and curves to the subpath. As segments or curves
     are added to the subpath, the subpath's current point is updated to
     point to the end of the last segment or curve to be added. The lines
     and curves of a subpath are always connected, but they are not required
     to form a closed set of lines. Your application explicitly closes a
     subpath by calling CGPathCloseSubpath. Closing the subpath adds a
     line segment that terminates at the subpath’s starting point, and
     also changes how those lines are rendered—for more information see
     Paths in Quartz 2D Programming Guide.
     */
    
    /**
     Creating and Managing Paths
     */
//    CGPathCreateMutable()
//    CGPathCreateWithEllipseInRect(<#CGRect rect#>, <#const CGAffineTransform * _Nullable transform#>)
//    CGPathCreateWithRect(<#CGRect rect#>, <#const CGAffineTransform * _Nullable transform#>)
//    CGPathCreateWithRoundedRect(<#CGRect rect#>, <#CGFloat cornerWidth#>, <#CGFloat cornerHeight#>, <#const CGAffineTransform * _Nullable transform#>)
//    CGPathCreateCopy(<#CGPathRef  _Nullable path#>)
//    CGPathCreateCopyByTransformingPath(<#CGPathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable transform#>)
//    CGPathCreateCopyByDashingPath(<#CGPathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable transform#>, <#CGFloat phase#>, <#const CGFloat * _Nullable lengths#>, <#size_t count#>)
//    CGPathCreateCopyByStrokingPath(<#CGPathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable transform#>, <#CGFloat lineWidth#>, <#CGLineCap lineCap#>, <#CGLineJoin lineJoin#>, <#CGFloat miterLimit#>)
//    CGPathCreateMutableCopy(<#CGPathRef  _Nullable path#>)
//    CGPathCreateMutableCopyByTransformingPath(<#CGPathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable transform#>)
//    CGPathRelease(<#CGPathRef  _Nullable path#>)
//    CGPathRetain(<#CGPathRef  _Nullable path#>)
    
    /**
     Modifying Core Graphics Paths
     */
//    CGPathAddArc(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat x#>, <#CGFloat y#>, <#CGFloat radius#>, <#CGFloat startAngle#>, <#CGFloat endAngle#>, <#bool clockwise#>)
//    CGPathAddRelativeArc(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable matrix#>, <#CGFloat x#>, <#CGFloat y#>, <#CGFloat radius#>, <#CGFloat startAngle#>, <#CGFloat delta#>)
//    CGPathAddArcToPoint(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat x1#>, <#CGFloat y1#>, <#CGFloat x2#>, <#CGFloat y2#>, <#CGFloat radius#>)
//    CGPathAddCurveToPoint(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat cp1x#>, <#CGFloat cp1y#>, <#CGFloat cp2x#>, <#CGFloat cp2y#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGPathAddLines(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#const CGPoint * _Nullable points#>, <#size_t count#>)
//    CGPathAddLineToPoint(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGPathAddPath(<#CGMutablePathRef  _Nullable path1#>, <#const CGAffineTransform * _Nullable m#>, <#CGPathRef  _Nullable path2#>)
//    CGPathAddQuadCurveToPoint(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat cpx#>, <#CGFloat cpy#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGPathAddRect(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGRect rect#>)
//    CGPathAddRects(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#const CGRect * _Nullable rects#>, <#size_t count#>)
//    CGPathAddRoundedRect(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable transform#>, <#CGRect rect#>, <#CGFloat cornerWidth#>, <#CGFloat cornerHeight#>)
//    CGPathApply(<#CGPathRef  _Nullable path#>, <#void * _Nullable info#>, <#CGPathApplierFunction  _Nullable function#>)
//    CGPathMoveToPoint(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGFloat x#>, <#CGFloat y#>)
//    CGPathCloseSubpath(<#CGMutablePathRef  _Nullable path#>)
//    CGPathAddEllipseInRect(<#CGMutablePathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGRect rect#>)
    
    
    /**
     Getting Information about Core Graphics Paths
     */
//    CGPathEqualToPath(<#CGPathRef  _Nullable path1#>, <#CGPathRef  _Nullable path2#>)
//    CGPathGetBoundingBox(<#CGPathRef  _Nullable path#>)
//    CGPathGetPathBoundingBox(<#CGPathRef  _Nullable path#>)
//    CGPathGetCurrentPoint(<#CGPathRef  _Nullable path#>)
//    CGPathGetTypeID()
//    CGPathIsEmpty(<#CGPathRef  _Nullable path#>)
//    CGPathIsRect(<#CGPathRef  _Nullable path#>, <#CGRect * _Nullable rect#>)
//    CGPathContainsPoint(<#CGPathRef  _Nullable path#>, <#const CGAffineTransform * _Nullable m#>, <#CGPoint point#>, <#bool eoFill#>)
    
    /**
     Callbacks
     */
//    CGPathApplierFunction
    
    /**
     Data Types
     */
//    CGPathRef
//    CGMutablePathRef
//    CGPathElement
    
    /**
     Constants
     */
//    CGPathDrawingMode
//    CGPathElementType
//    CGLineCap
//    CGLineJoin
    
    
#pragma mark -- CGPattern
    
    /*
     A 2D pattern to be used for drawing graphics paths.

     Core Graphics tiles the pattern cell for you, based on
     parameters you specify when you call CGPatternCreate.
     
     To create a dashed line, see CGContextSetLineDash in CGContext.
     */
    
    
    /**
     Creating a Pattern
     */
//    CGPatternCreate(<#void * _Nullable info#>, <#CGRect bounds#>, <#CGAffineTransform matrix#>, <#CGFloat xStep#>, <#CGFloat yStep#>, <#CGPatternTiling tiling#>, <#bool isColored#>, <#const CGPatternCallbacks * _Nullable callbacks#>)
    
    /**
     Getting the CFTypeID
     */
//    CGPatternGetTypeID()
    
    /**
     Retaining and Releasing a Pattern
     */
//    CGPatternRetain(<#CGPatternRef  _Nullable pattern#>)
//    CGPatternRelease(<#CGPatternRef  _Nullable pattern#>)
    
    /**
     Callsbacks
     */
//    CGPatternDrawPatternCallback
//    CGPatternReleaseInfoCallback
    
    /**
     Data Types
     */
//    CGPatternRef
//    CGPatternCallbacks
    
   
    
#pragma mark -- CGPDFArray
    
    /**
     An array structure within a PDF document.
     
     PDF arrays may be heterogeneous -- this is, they may contain any
     other PDF objects, including PDF strings, PDF dictionaries, and
     other PDF arrays.
     
     Many CGPDFArray functions to retrieve values from a PDF array
     take the form:
     ============================================================
     bool CGPDFArrayGet<DataType> (
      CGPDFArrayRef array,
      size_t index,
      <DataType>Ref *value
     );
     ============================================================

     These functions test the data type of the object at the specified
     index. If the object is not of the expected type, the function
     returns NO. If the object is of the expected type, the function
     returns YES, and the object is passed back in the value parameter.
     
     This type is not derived from CFTypeRef and therefore there are no
     functions for retaining and releasing it. CGPDFArrayRef objects
     exist only as constituent parts of a CGPDFDocumentRef object, and
     they are managed by their container.
     */
    
    /**
     Getting Data from a PDF Array
     */
//    CGPDFArrayGetArray(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFArrayRef  _Nullable * _Nullable value#>)
//    CGPDFArrayGetBoolean(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFBoolean * _Nullable value#>)
//    CGPDFArrayGetCount(<#CGPDFArrayRef  _Nullable array#>)
//    CGPDFArrayGetDictionary(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFDictionaryRef  _Nullable * _Nullable value#>)
//    CGPDFArrayGetInteger(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFInteger * _Nullable value#>)
//    CGPDFArrayGetName(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#const char * _Nullable * _Nullable value#>)
//    CGPDFArrayGetNull(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>)
//    CGPDFArrayGetNumber(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFReal * _Nullable value#>)
//    CGPDFArrayGetObject(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFObjectRef  _Nullable * _Nullable value#>)
//    CGPDFArrayGetStream(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFStreamRef  _Nullable * _Nullable value#>)
//    CGPDFArrayGetString(<#CGPDFArrayRef  _Nullable array#>, <#size_t index#>, <#CGPDFStringRef  _Nullable * _Nullable value#>)
    
    /**
     Data Types
     */
//    CGPDFArrayRef
    
    
#pragma mark -- CGPDFContentStream
    
    /*
     A representation of one or more content data streams in a
     PDF page.
     
     A CGPDFContentStreamRef object represents one or more PDF
     content streams for a page and their associated resource
     dictionaries. A PDF content stream is a sequentail set of
     instructions that specifies how to paint items on a PDF
     page. A resource dictionary contains information needed by
     the content stream in order to decode the sequential instructions
     of the content stream.
     
     CGPDFContentStreamRef functions can retrieve both the content
     streams and the resource dicitionaries associated with a PDF
     page.
     
     This type is not derived from CFTypeRef and thesefore there
     are no functions for retaining and releasing it. CGPDFContentStreamRef
     objects exist only as constituent parts of a CGPDFDocumentRef
     object, and they are managed by their container.
     */
    
    /**
     Creating a PDF Content Stream Object
     */
//    CGPDFContentStreamCreateWithPage(<#CGPDFPageRef  _Nonnull page#>)
//    CGPDFContentStreamCreateWithStream(<#CGPDFStreamRef  _Nonnull stream#>, <#CGPDFDictionaryRef  _Nonnull streamResources#>, <#CGPDFContentStreamRef  _Nullable parent#>)
    
    /**
     Getting Data from a PDF Content Stream Object
     */
//    CGPDFContentStreamGetStreams(<#CGPDFContentStreamRef  _Nonnull cs#>)
//    CGPDFContentStreamGetResource(<#CGPDFContentStreamRef  _Nonnull cs#>, <#const char * _Nonnull category#>, <#const char * _Nonnull name#>)
    
    /**
     Retaining and Releasing a PDF Content Stream Object
     */
//    CGPDFContentStreamRetain(<#CGPDFContentStreamRef  _Nonnull cs#>)
//    CGPDFContentStreamRelease(<#CGPDFContentStreamRef  _Nonnull cs#>)
    
    /**
     Data Types
     */
//    CGPDFContentStreamRef
    
    
#pragma mark -- CGPDFContext
    
    /**
     A type of CGContextRef for drawing PDF content.
     
     The CGPDFContext functions operation only on Core Graphic
     PDF graphics contexts created using the functions
     CGPDFContextCreate or CGPDFContextCreateWithURL.
     
     When you draw to the PDF context using CGContext functions
     the drawing operations are recorded in PDF format. The
     PDF commands that represent the drawing are written to
     the destination specified when you create the PDF graphics
     context.
     */
    
    /**
     Creating a Context
     */
//    CGPDFContextCreate(<#CGDataConsumerRef  _Nullable consumer#>, <#const CGRect * _Nullable mediaBox#>, <#CFDictionaryRef  _Nullable auxiliaryInfo#>)
//    CGPDFContextCreateWithURL(<#CFURLRef  _Nullable url#>, <#const CGRect * _Nullable mediaBox#>, <#CFDictionaryRef  _Nullable auxiliaryInfo#>)
    
    /**
     Beginning and Ending Pages
     */
//    CGPDFContextBeginPage(<#CGContextRef  _Nullable context#>, <#CFDictionaryRef  _Nullable pageInfo#>)
//    CGPDFContextEndPage(<#CGContextRef  _Nullable context#>)
    
    /**
     Working with Destinations
     */
//    CGPDFContextAddDestinationAtPoint(<#CGContextRef  _Nullable context#>, <#CFStringRef  _Nonnull name#>, <#CGPoint point#>)
//    CGPDFContextSetDestinationForRect(<#CGContextRef  _Nullable context#>, <#CFStringRef  _Nonnull name#>, <#CGRect rect#>)
//    CGPDFContextSetURLForRect(<#CGContextRef  _Nullable context#>, <#CFURLRef  _Nonnull url#>, <#CGRect rect#>)
    
    /**
     Working with Metadata
     */
//    CGPDFContextAddDocumentMetadata(<#CGContextRef  _Nullable context#>, <#CFDataRef  _Nullable metadata#>)
    
    /**
     Closing a PDF context
     */
//    CGPDFContextClose(<#CGContextRef  _Nullable context#>)
    
    
#pragma mark -- CGPDFDictionary
    
    /**
     A dictionary structure within a PDF document.

     Dictionary objects are the main building blocks of a PDF document.
     A key-value pair within a dictionary is called an entry. In a PDF
     dictionary, the key must be an array of characters. Within a given
     dictionary, the keys are unique—that is, no two keys in a single
     dictionary are equal (as determined by strcmp). The value associated
     with a key can be any kind of PDF object, including another
     dictionary. Dictionary objects are the main building blocks of
     a PDF document.
     
     Many functions that retrieve values from a PDF dictionary take the
     form:
     =============================================================
     bool CGPDFDictionaryGet<DataType> (
      CGPDFDictionaryRef dictionary,
      const char *key,
      <DataType>Ref *value
     );
     =============================================================

     These functions test whether there is an object associated
     with the specified key. If there is an object associated
     with the specified key, they test its data type. If there
     is no associated object, or if there is but it is not of
     the expected type, the function returns NO. If there is
     an object associated with the specified key and it is of
     the expected type, the function returns YES and the object
     is passed back in the value parameter.
     
     This object is not derived from CFType and therefore there
     are no functions for retaining and releasing it. CGPDFDictionary
     objects exist only as constituent parts of a CGPDFDocument
     object, and they are managed by their container.
     */
    
    /**
     Applying a Function to All Entries
     */
//    CGPDFDictionaryApplyFunction(<#CGPDFDictionaryRef  _Nullable dict#>, <#CGPDFDictionaryApplierFunction  _Nullable function#>, <#void * _Nullable info#>)
    
    /**
     Getting Data from a Dictionary
     */
//    CGPDFDictionaryGetArray(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFArrayRef  _Nullable * _Nullable value#>)
//    CGPDFDictionaryGetBoolean(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFBoolean * _Nullable value#>)
//    CGPDFDictionaryGetCount(<#CGPDFDictionaryRef  _Nullable dict#>)
//    CGPDFDictionaryGetDictionary(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFDictionaryRef  _Nullable * _Nullable value#>)
//    CGPDFDictionaryGetInteger(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFInteger * _Nullable value#>)
//    CGPDFDictionaryGetName(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#const char * _Nullable * _Nullable value#>)
//    CGPDFDictionaryGetNumber(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFReal * _Nullable value#>)
//    CGPDFDictionaryGetObject(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFObjectRef  _Nullable * _Nullable value#>)
//    CGPDFDictionaryGetStream(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFStreamRef  _Nullable * _Nullable value#>)
//    CGPDFDictionaryGetString(<#CGPDFDictionaryRef  _Nullable dict#>, <#const char * _Nonnull key#>, <#CGPDFStringRef  _Nullable * _Nullable value#>)
    
    /**
     Callbacks
     */
//    CGPDFDictionaryApplierFunction
    
    /**
     Data Types
     */
//    CGPDFDictionaryRef
    
    
#pragma mark -- CGPDFDocument
    
    /*
     A document that contains PDF(Portable Document Format)
     drawing information.
     
     PDF provides an efficient format for cross-platform exchange
     of documents with rich content. PDF files can contain multiple
     pages of images and text. A PDF document object contains all the
     information relating to a PDF document, including its catalog
     and contents.
     
     Note that PDF documents may be encrypted, and that some operations
     may be restricted until a valid password is supplied-see the functions
     listed in Managing Encryption. Core Graphics also supports decrypting
     encrypted documents.
     
     Core Graphics can both display and generate files that are compliant
     with the PDF standard. When imaging PDF files, CGPDFDocumentRef
     is the basic type used to represent a PDF document.
     */
    
    /**
     Creating PDF Document Objects
     */
//    CGPDFDocumentCreateWithProvider(<#CGDataProviderRef  _Nullable provider#>)
//    CGPDFDocumentCreateWithURL(<#CFURLRef  _Nullable url#>)
    
    /**
     Retaining and Releasing PDF Documents
     */
//    CGPDFDocumentRelease(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentRetain(<#CGPDFDocumentRef  _Nullable document#>)
    
    /**
     Getting the CFTypeID for a PDF Document Object
     */
//    CGPDFDocumentGetTypeID()
    
    /**
     Getting Information About Core Graphics PDF Documents
     */
//    CGPDFDocumentGetCatalog(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentGetNumberOfPages(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentGetPage(<#CGPDFDocumentRef  _Nullable document#>, <#size_t pageNumber#>)
//    CGPDFDocumentGetVersion(<#CGPDFDocumentRef  _Nullable document#>, <#int * _Nonnull majorVersion#>, <#int * _Nonnull minorVersion#>)
//    CGPDFDocumentGetInfo(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentGetID(<#CGPDFDocumentRef  _Nullable document#>)
    
    /**
     Managing Encryption
     */
//    CGPDFDocumentAllowsCopying(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentAllowsPrinting(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentIsEncrypted(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentIsUnlocked(<#CGPDFDocumentRef  _Nullable document#>)
//    CGPDFDocumentUnlockWithPassword(<#CGPDFDocumentRef  _Nullable document#>, <#const char * _Nonnull password#>)
    
    /**
     Data Types
     */
//    CGPDFDocumentRef
    
    
#pragma mark -- CGPDFObject
    
    /**
     An Object representing content within a PDF document.
     
     PDF supports several basic types of object: Boolean values, and
     real numbers, strings, names, arrays, dictionaries, and streams.
     Most of these are represented in Core Graphics by corresponding
     specific types. A CGPDFObject can represent any of these types.
     You use CGPDFObject functions to determine the type of the object,
     and retrieve the object value if it is of an expected type.
     
     This object is not derived from CFType and therefore there are
     no functions for retaining and releasing it. CGPDFObject objects
     exist as constituent parts of a CGPDFDocument object, and
     are managed by their container.
     */
    
    /**
     Getting object Types and Values
     */
//    CGPDFObjectGetType(<#CGPDFObjectRef  _Nullable object#>)
//    CGPDFObjectGetValue(<#CGPDFObjectRef  _Nullable object#>, <#CGPDFObjectType type#>, <#void * _Nullable value#>)
    
    /**
     Data Types
     */
//    CGPDFObjectRef
//    CGPDFBoolean
//    CGPDFInteger
//    CGPDFReal
    
    /**
     Constants
     */
//    CGPDFObjectType
    
    
#pragma mark -- CGPDFOperatorTable
    
    /**
     A set of callback functions for operators used when
     scanning content in a PDF document.

     You pass an operator table and a PDF content stream
     to a CGPDFScanner object. When the scanner parses a
     PDF operator, Core Graphics invokes your callback for
     that operator. See also CGPDFScanner and CGPDFContentStream.

     ⚠️ This object is not derived from CFType and therefore
     you can’t use the Core Foundation base functions on it,
     such as CFRetain and CFRelease. Memory management is
     handled by the specific functions CGPDFOperatorTableRetain
     and CGPDFOperatorTableRelease.
     
     For more about PDF operators, see the latest version of
     PDF Reference, Adobe Systems Incorporated.
     */
    
    /**
     Creating a PDF Operator Table
     */
//    CGPDFOperatorTableCreate()
    
    /**
     Setting Callback Functions
     */
//    CGPDFOperatorTableSetCallback(<#CGPDFOperatorTableRef  _Nullable table#>, <#const char * _Nullable name#>, <#CGPDFOperatorCallback  _Nullable callback#>)
    
    /**
     Retaining and Releasing a PDF Operator Table
     */
//    CGPDFOperatorTableRetain(<#CGPDFOperatorTableRef  _Nullable table#>)
//    CGPDFOperatorTableRelease(<#CGPDFOperatorTableRef  _Nullable table#>)
    
    /**
     Callbacks
     */
//    CGPDFOperatorCallback
    
    /**
     Data Types
     */
//    CGPDFOperatorTableRef
    
    
#pragma mark -- CGPDFPage
    
    /**
     CGPDFPage
     
     A page in a PDF document.
     
     The CGPDFPageRef opaque type represents a page in a
     PDF document.
     */
    
    /**
     Retaining and Releasing a PDF Page
     */
//    CGPDFPageRetain(<#CGPDFPageRef  _Nullable page#>)
//    CGPDFPageRelease(<#CGPDFPageRef  _Nullable page#>)
    
    /**
     Getting the CFType ID
     */
//    CGPDFPageGetTypeID()
    
    /**
     Getting Page Information
     */
//    CGPDFPageGetBoxRect(<#CGPDFPageRef  _Nullable page#>, <#CGPDFBox box#>)
//    CGPDFPageGetDictionary(<#CGPDFPageRef  _Nullable page#>)
//    CGPDFPageGetDocument(<#CGPDFPageRef  _Nullable page#>)
//    CGPDFPageGetDrawingTransform(<#CGPDFPageRef  _Nullable page#>, <#CGPDFBox box#>, <#CGRect rect#>, <#int rotate#>, <#bool preserveAspectRatio#>)
//    CGPDFPageGetPageNumber(<#CGPDFPageRef  _Nullable page#>)
//    CGPDFPageGetRotationAngle(<#CGPDFPageRef  _Nullable page#>)
    
    /**
     Data Types
     */
//    CGPDFPageRef
    
    /**
     Constants
     */
//    CGPDFBox
    
    
#pragma mark -- CGPDFScanner
    
    /*
     A parser object for handling content and operators in a PDF
     content stream.
     
     Yon can set up the PDF scanner object to invoke callbacks when
     it encounters specific PDF operators in the stream.
     
     This object is not derived from CFType.  Use CGPDFScannerRetain
     and CGPDFScannerRelease to manage the retain count of CGPDFScannerRef
     instances; do not use CFRetain and CFRelease.
     */
    
    /**
     Creating a PDF Scanner Object
     */
//    CGPDFScannerCreate(<#CGPDFContentStreamRef  _Nonnull cs#>, <#CGPDFOperatorTableRef  _Nullable table#>, <#void * _Nullable info#>)
    
    /**
     Retaining and Releasing PDF Scanner Objects
     */
//    CGPDFScannerRetain(<#CGPDFScannerRef  _Nullable scanner#>)
//    CGPDFScannerRelease(<#CGPDFScannerRef  _Nullable scanner#>)
    
    /**
     Parsing Content
     */
//    CGPDFScannerScan(<#CGPDFScannerRef  _Nullable scanner#>)
//    CGPDFScannerGetContentStream(<#CGPDFScannerRef  _Nonnull scanner#>)
    
    /**
     Getting PDF Objects from the Scanner Stack
     */
//    CGPDFScannerPopObject(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFObjectRef  _Nullable * _Nullable value#>)
//    CGPDFScannerPopBoolean(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFBoolean * _Nullable value#>)
//    CGPDFScannerPopInteger(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFInteger * _Nullable value#>)
//    CGPDFScannerPopNumber(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFReal * _Nullable value#>)
//    CGPDFScannerPopName(<#CGPDFScannerRef  _Nonnull scanner#>, <#const char * _Nullable * _Nullable value#>)
//    CGPDFScannerPopArray(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFArrayRef  _Nullable * _Nullable value#>)
//    CGPDFScannerPopString(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFStringRef  _Nullable * _Nullable value#>)
//    CGPDFScannerPopDictionary(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFDictionaryRef  _Nullable * _Nullable value#>)
//      CGPDFScannerPopStream(<#CGPDFScannerRef  _Nonnull scanner#>, <#CGPDFStreamRef  _Nullable * _Nullable value#>)
    
    /**
     Data Types
     */
//    CGPDFScannerRef
    

#pragma mark -- CGPDFStream
    
    /**
     A stream or sequence of data bytes in a PDF document.
     
     A PDF stream consists of a dictionary that describes a
     sequence of bytes. Streams typically represent objects with
     potentially large amounts of data, such as images and page
     descriptions.
     
     This object is not derived from CFType and therefore there
     are no functions for retaining and releasing it.
     */
    
    /**
     Getting Data from a PDF Stream
     */
//    CGPDFStreamCopyData(<#CGPDFStreamRef  _Nullable stream#>, <#CGPDFDataFormat * _Nullable format#>)
//    CGPDFStreamGetDictionary(<#CGPDFStreamRef  _Nullable stream#>)
    
    /**
     Data Types
     */
//    CGPDFStreamRef
    
    /**
     Constants
     */
//    CGPDFDataFormat
    
    
#pragma mark -- CGPDFString
    
    /**
     A text string in a PDF document.
     
     A PDF string object is a series of bytes—unsigned integer
     values in the range 0 to 255.
     
     The string elements are not integer objects, but are stored
     in a more compact format. For more information on the
     representation of strings in PDF, see the latest version of
     PDF Reference, Adobe Systems Incorporated.
     
     This object is not derived from CFType and therefore there
     are no functions for retaining and releasing it. CGPDFString
     objects exist as constituent parts of a CGPDFDocument object,
     and are managed by their container.
     */
    
    /**
     Coverting PDF Strings
     */
//    CGPDFStringCopyDate(<#CGPDFStringRef  _Nullable string#>)
//    CGPDFStringCopyTextString(<#CGPDFStringRef  _Nullable string#>)
    
    /**
     Getting PDF String Data
     */
//    CGPDFStringGetBytePtr(<#CGPDFStringRef  _Nullable string#>)
//    CGPDFStringGetLength(<#CGPDFStringRef  _Nullable string#>)
    
    /**
     Data Types
     */
//    CGPDFStringRef
    
    
#pragma mark --CGPSConverter
    
    /**
     An object that converts PostScript data to PDF data.
     
     The PostScript data is supplied by a data provider and
     written into a data consumer. When you create a PostScript
     converter object, you can supply callback functions for
     Quartz to invoke at various stages of the conversion process.
     */

    
#pragma mark -- CGShading
    
    /**
     A definition for a smooth transition between colors,
     controlled by a custom function you provide, for drawing
     radial and axial gradient fills.
     
     Shading means to fill using a smooth transition between
     colors across an area. You create a shading using a custom
     function with a CGFunctionRef object. To paint with a Core
     Graphics shading, you call CGContextDrawShading. This function
     fills the current clipping path using the specified color
     gradient, calling your parametric function repeatedly as it draws.
     
     An alternative to using a CGShading object is to use the
     CGGradientRef type. For applications that run in macOS 10.5
     and later, CGGradient objects are much simpler to use. (See CGGradient.)
     */
    
    /**
     Creating Shading Objects
     */
//    CGShadingCreateAxial(<#CGColorSpaceRef  _Nullable space#>, <#CGPoint start#>, <#CGPoint end#>, <#CGFunctionRef  _Nullable function#>, <#bool extendStart#>, <#bool extendEnd#>)
//    CGShadingCreateRadial(<#CGColorSpaceRef  _Nullable space#>, <#CGPoint start#>, <#CGFloat startRadius#>, <#CGPoint end#>, <#CGFloat endRadius#>, <#CGFunctionRef  _Nullable function#>, <#bool extendStart#>, <#bool extendEnd#>)
    
    /**
     Retaining and Releasing Shading Objects
     */
//    CGShadingRetain(<#CGShadingRef  _Nullable shading#>)
//    CGShadingRelease(<#CGShadingRef  _Nullable shading#>)
    
    /**
     Getting the CFTypeID
     */
//    CGShadingGetTypeID()
    
    /**
     Data Types
     */
//    CGShadingRef
}




/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

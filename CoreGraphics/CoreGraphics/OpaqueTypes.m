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
     
     
     */
    
    
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

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

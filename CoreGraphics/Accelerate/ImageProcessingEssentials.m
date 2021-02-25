//
//  ImageProcessingEssentials.m
//  Accelerate
//
//  Created by tigerfly on 2021/1/5.
//  Copyright © 2021 tigerfly. All rights reserved.
//

#import "ImageProcessingEssentials.h"

@interface ImageProcessingEssentials ()

@end

@implementation ImageProcessingEssentials

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Creating a Core Graphics Image Format
    
    /*
     Provide descriptions of Core Graphics image formats for
     conversions to and from vImage.

     Conversions between Core Graphics-backed images and vImage
     buffers require that you define the Core Graphics image
     format. The format describes the number of color channels
     and how they're ordered; the size, in bits, of the color
     channels; and whether the image data is premultiplied by
     an alpha value.
     
     You can initialize a Core Graphics image format in either
     of two ways: by hard-coding values or by deriving the format
     properties from a CGImageRef instance.
     */
    
    /**
     Initialize a Core Graphics Image Format from Hard-Coded Values

     The following example shows how you create a Core Graphics
     image format that describes an image containing four 8-bit
     channels in the following order: alpha (transparency), red,
     green, and blue. This combination of properties is referred
     to as ARGB8888.
     
     The vImage_CGImageFormat structure created by this code is
     reusable. You declare it as a variable because it's passed to
     subsequent vImage functions as an in-out parameter.
     ============================================================
     var format = vImage_CGImageFormat(
     bitsPerComponent: 8,
     bitsPerPixel: 32,
     colorSpace: CGColorSpaceCreateDeviceRGB(),
     bitmapInfo: CGBitmapInfo(rawValue: CGImageAlphaInfo.first.rawValue),
     renderingIntent: .defaultIntent)
     ============================================================
     */
    
    /**
     Initialize a Core Graphics Image Format from an Image
     
     You can derive the properties of a Core Graphics image format
     from the CGImageRef instance itself. The following example
     shows how to create a format description based on the
     properties of a UIImage instance named sourceImage:
     ============================================================
     guard
         let cgImage = sourceImage.cgImage,
         let format = vImage_CGImageFormat(cgImage: cgImage) else {
             return nil
     }
     ============================================================
     */
    
    
#pragma mark -- Creating and Populating Buffers from Core Graphics Images
    
    /**
     Initialize vImage buffers from Core Graphics images.

     vImage_Buffer structures are the basic data structures that
     vImage uses for working with images. They describe an image's
     dimensions and contain the pixel data that vImage routines
     operate on.
     
     Typically, you'll initialize a source buffer from an image
     and initialize and allocate a destination buffer to receive
     the result of a vImage operation.
     */
    
    /**
     Initialize a Source Buffer from a Core Graphics Image

     The vImage functions that initialize a buffer's size and
     data require an instantiated vImage_Buffer structure.
     Typically, you declare a buffer as a variable because
     these functions mutate the buffer.
     
     You can initialize a vImage buffer from a CGImageRef
     instance that's acquired from the CGImage property of
     an image. In the following example, the image is named
     Flowers_2.jpg. The init(cgImage:format:flags:) function
     initializes a vImage_Buffer structure with the image data
     using the format discussed in Creating a Core Graphics
     Image Format.
     ============================================================
     guard
         let cgImage = UIImage(named: "Flowers_2.jpg")?.cgImage,
         var sourceBuffer = try? vImage_Buffer(cgImage: cgImage,
                                               format: format) else {
                                                 return nil
     }
     ============================================================
     */
    
    /**
     Initialize and Allocate a Destination Buffer

     Typically, in addition to creating a buffer to represent your
     source image, you create a destination buffer to receive the
     result of the vImage operation. In this case, you use the
     init(width:height:bitsPerPixel:) function to initialize a
     buffer of a specified size and the correct memory allocation
     for the bit-depth of the image:
     ============================================================
     guard var destinationBuffer = try? vImage_Buffer(width: Int(sourceBuffer.width),
                                                      height: Int(sourceBuffer.height),
                                                      bitsPerPixel: format.bitsPerPixel) else {
                                                         return nil
     }
     ============================================================
     */

    
    /**
     Free the Buffer Memory

     After you're finished with buffers that have have their own
     memory allocation, it's important that you free the memory
     allocated to them:
     ============================================================
     sourceBuffer.free()
     destinationBuffer.free()
     ============================================================
     */
    
    

#pragma mark -- Creating a Core Graphics Image from a vImage Buffer

    /*
     Create displayable representations of vImage buffers.

     vImage provides a function for creating Core Graphics images
     from vImage buffers. This function allows you to display the
     results of a vImage operation to your user.
     */
    
    /**
     Create the Image

     You create a Core Graphics image from the buffer, and
     initialize a UIImage instance from that. The
     createCGImage(format:flags:) function returns a CGImageRef
     instance based on the supplied Core Graphics image format
     (for more information, see Creating a Core Graphics Image
     Format).
     
     The following example shows how to create a Core Graphics
     image from a vImage buffer:
     ============================================================
     let result = try? destinationBuffer.createCGImage(format: format)

     if let result = result {
         // Assumes `imageView` is a `UIImageView`
         imageView.image = UIImage(cgImage: result)
     }
     ============================================================
     */
    
    
#pragma mark -- Building a Basic Image-Processing Workflow

    /*
     Resize an image with vImage.

     vImage provides fast and accurate high-level functions for
     image manipulation; for example, compositing, convolution,
     and histogram operations. It operates on common image formats
     through vImage_Buffer structures. vImage buffers describe the
     size of an image and the number of bytes in each row, and
     point to the image pixel data. Buffers are initialized from
     Core Graphics images, Core Video pixel buffers, or raw pixel
     data. The pixel data a buffer points to can be used to create
     a new Core Graphics image or can be copied into a Core Video
     pixel buffer.
     
     In the simplest workflow, you convert an image to a vImage
     buffer, apply an operation to the buffer, and convert the
     buffer back to an image. In this example, the width and
     height of the result are one-third of the original:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/e0b05672-d091-417a-9371-26dc6546ed86.png
     */
    
    /**
     Initialize an Image Format and vImage Buffers

     To learn about initializing the buffers you'll need to perform
     a scaling operation, see Creating a Core Graphics Image Format
     and Creating and Populating Buffers from Core Graphics Images.
     In this example, you'll need the image format and buffers
     discussed in Creating and Populating Buffers from Core Graphics
     Images. However, you'll use the following code to initialize a
     destination buffer with a height and width that are a quarter
     of the source dimensions.
     ============================================================
     let destinationHeight = Int(CGFloat(sourceBuffer.height) * 0.25)
     let destinationWidth = Int(CGFloat(sourceBuffer.width) * 0.25)

     guard var destinationBuffer = try? vImage_Buffer(width: destinationWidth,
                                                      height: destinationHeight,
                                                      bitsPerPixel: format.bitsPerPixel) else {
                                                         return nil
     }

     defer {
         destinationBuffer.free()
     }
     ============================================================
     */
    
    /**
     Apply the Scale Operation

     If you're rescaling an image with premultiplied alpha (that is,
     with a bitmapInfo value with kCGImageAlphaPremultipliedFirst or
     kCGImageAlphaPremultipliedLast), before you apply the scale
     operation, see Avoid Artifacts by Unpremultiplying.
     
     Otherwise, with the source and destination buffers properly
     initialized, you're ready to perform the scaling operation.
     Because your format contains four 8-bit channels, you use the
     vImageScale_ARGB8888 function. This function works equally well
     on all channel orderings; for example, RGBA or BGRA.
     ============================================================
     error = vImageScale_ARGB8888(&sourceBuffer,
                                  &destinationBuffer,
                                  nil,
                                  vImage_Flags(kvImageHighQualityResampling))
             
     guard error == kvImageNoError else {
         fatalError("Error in vImageScale_ARGB8888: \(error)")
     }
     ============================================================

     The kvImageHighQualityResampling flag uses a high-quality
     Lanzcos 5 x 5 resampling filter. If you require faster scaling,
     pass kvImageNoFlags.
     
     destinationBuffer now contains the scaled version of sourceBuffer.
     To learn how to display the scaled result to your user, see
     Creating a Core Graphics Image from a vImage Buffer.
     
     After you've finished with the source and destination buffers,
     it's important that you free the memory allocated to them:
     ============================================================
     sourceBuffer.free()
     destinationBuffer.free()
     ============================================================
     */
    
    /**
     Avoid Artifacts by Unpremultiplying

     If you're rescaling an image with premultiplied alpha, you may
     see artifacts in high-frequency regions of the image. To avoid
     this situation, unpremultiply the image data—that is, remove
     the premultiplied alpha value from the image data—before the
     scaling operation, and premultiply the scaled result.
     
     This code shows the additional operations required, with error
     handling removed for brevity:
     ============================================================
     error = vImageUnpremultiplyData_ARGB8888(&sourceBuffer,
                                              &sourceBuffer,
                                              vImage_Flags(kvImageNoFlags))
      
     error = vImageScale_ARGB8888(&sourceBuffer,
                                  &destinationBuffer,
                                  nil,
                                  vImage_Flags(kvImageHighQualityResampling))
      
     error = vImagePremultiplyData_ARGB8888(&destinationBuffer,
                                            &destinationBuffer,
                                            vImage_Flags(kvImageNoFlags))
     ============================================================
     */
    
    
#pragma mark -- Applying Geometric Transforms to Images

    /*
     Reflect, shear, rotate, and scale image buffers using vImage.

     The vImage library provides a suite of functions to apply
     different geometric transforms to images. The following
     image shows examples of reflect, scale, rotate, and composite
     translate-rotate-scale transforms:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599143539.png

     By default, vImage uses the Lanczos-3 algorithm when resampling.
     If you need the higher-quality results of the Lanczos-5 algorithm
     and don’t mind slightly slower performance, pass the
     kvImageHighQualityResampling flag to the geometric transform
     operations.
     
     The vImage geometry operations don’t work in-place, that is,
     you can’t use the same buffer as the source and destination.
     
     If you’re applying a geometric transforms to an image with
     premultiplied alpha, you may see artifacts in high-frequency
     regions of the image. To avoid these artifacts, call
     vImageUnpremultiplyData_ARGB8888 to remove the premultiplied alpha
     value from the image data before the operation. After the
     operation, call vImagePremultiplyData_ARGB8888 to premultiply
     the result.
     */
    
    
    /**
     Reflect a vImage Buffer
     
     The vImage reflect functions generate either a vertical or
     horizontal reflection of the image. The following image
     shows the original buffer contents and the contents after
     vertical reflection:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599231074.png

     The destination buffer you pass to the vImage reflect
     functions must be the same size as the source buffer.
     The following code uses a precondition to ensure that
     both buffer sizes match:
     ============================================================
     static func verticalReflectBuffer(source: vImage_Buffer,
                                       destination: inout vImage_Buffer) {
         
         precondition(source.size == destination.size,
                      "Source and destination buffers must have the same size.")
         
         _ = withUnsafePointer(to: source) { srcPointer in
             vImageVerticalReflect_ARGB8888(srcPointer,
                                            &destination,
                                            vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================
     */
    
    /**
     Shear a vImage Buffer
     
     The vImage shear functions scale and offset an image in one
     dimension. These functions accept a resampling filter that
     you use for fine control over the resampling algorithm. For
     more information on resampling, see Reducing Artifacts in
     Resampled Images.
     
     Control the amount of shear by specifying the shearSlope
     parameter. The functions define the shear slope as deltay / deltax,
     that is the slope for a linear function, y = slope * x. The
     verticalShearBuffer(source:destination:byAngleInDegrees:verticalScale:backgroundColor:)
     function accepts the shear as an angle in degrees and
     performs the transforms:
     
     ============================================================
     static func verticalShearBuffer(source: vImage_Buffer,
                                     destination: inout vImage_Buffer,
                                     byAngleInDegrees angleInDegrees: Double,
                                     verticalScale: Float = 1,
                                     backgroundColor: [Pixel_8] = [0, 127, 127, 127]) {
         
         // 1. Ensure shear angle is valid.
         precondition(angleInDegrees > -90 && angleInDegrees < 90,
                      "Shear angle must be greater than -90º and less than 90º.")
         
         // 2. Calculate `shearSlope` as the tangent of the specified angle.
         let angle = Measurement(value: angleInDegrees,
                                 unit: UnitAngle.degrees)
         let radians = Float(angle.converted(to: .radians).value)
         let shearSlope = tan(radians)

         // 3. Create a default resampling filter using the specified scale.
         let resamplingFilter = vImageNewResamplingFilter(verticalScale,
                                                          vImage_Flags(kvImageNoFlags))
         defer {
             vImageDestroyResamplingFilter(resamplingFilter)
         }
         
         // 4. Apply the transform to `source` and write the result to `destination`.
         _ = withUnsafePointer(to: source) { srcPointer in
             vImageVerticalShear_ARGB8888(srcPointer,
                                          &destination,
                                          0, 0,
                                          0,
                                          shearSlope,
                                          resamplingFilter,
                                          backgroundColor,
                                          vImage_Flags(kvImageBackgroundColorFill))
         }
     }
     ============================================================

     To fit the sheared image in a buffer with the same dimensions
     as the original image, specify a shear angle that’s the arctangent
     of the image’s height divided by twice its width:
     ============================================================
     let shearAngle = atan(Double(sourceImageBuffer.height) /
                           Double(sourceImageBuffer.width * 2)) *
                           180 / .pi

     verticalShearBuffer(source: sourceImageBuffer,
                         destination: &destinationImageBuffer,
                         byAngleInDegrees: shearAngle,
                         verticalScale: 0.5)
     ============================================================

     On return, the destination buffer contains the following image:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599228724.png
     */
    
    
    /**
     Rotate a vImage Buffer by Multiples of 90º
     
     The vImage library provides 90º rotation functions that
     perform a simple 0º, 90º, 180º, or 270º rotation of an
     image around its center. The following shows an image
     without any rotation, rotated 90º counterclockwise,
     rotated 180º, and rotated 90º clockwise:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599233024.png
     
     Note that the 90º and 270º rotations don’t rotate around
     the true center of the image if the parity (that is, whether
     an integer is even or odd) of the source width and destination
     height don’t match. The same is true if the parity of the
     source height and destination width don’t match.
     
     If the source and destination buffers are different sizes,
     the 0º and 180º rotations require that the two heights have
     the same parity and the two widths have the same parity.
     
     The 90º rotation function crops source pixels that lie
     outside of the destination buffer and fills destination
     pixels that aren’t covered by source pixels with the
     specified background color.
     
     The following function applies a multiple of 90º rotation
     to a buffer and returns the result in a correctly oriented
     destination buffer:
     ============================================================
     static func rotateNinety(source: vImage_Buffer,
                              rotation: Int) -> vImage_Buffer? {

         // 1. Create the destination buffer.
         guard var destination: vImage_Buffer = {
             switch rotation {
                 case kRotate0DegreesClockwise, kRotate180DegreesClockwise:
                     return try? vImage_Buffer(size: source.size,
                                               bitsPerPixel: 8 * 4)
                 case kRotate90DegreesClockwise, kRotate270DegreesClockwise:
                     return try? vImage_Buffer(width: Int(source.size.height),
                                               height: Int(source.size.width),
                                               bitsPerPixel: 8 * 4)
                 default:
                     NSLog("Unsupported rotation constant: \(rotation).")
                     return nil
             }
         }() else {
             NSLog("Unable to initialize destination buffer.")
             return nil
         }
         
         // 2. Apply the transform to `source` and write the result to `destination`.
         _ = withUnsafePointer(to: source) { sourcePtr in
             vImageRotate90_ARGB8888(sourcePtr,
                                     &destination,
                                     UInt8(rotation),
                                     [0],
                                     vImage_Flags(kvImageNoFlags))
         }
         
         return destination
     }
     ============================================================
     */
    
    
    /**
     Rotate a vImage Buffer by an Arbitrary Angle

     The vImage library provides rotation functions that rotate
     an image by any angle around its center. The following image
     shows a buffer rotated 60º counterclockwise:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599233327.png

     The following function rotates a buffer by the specified angle
     and writes the result to the destination:
     ============================================================
     static func rotateBuffer(source: vImage_Buffer,
                              destination: inout vImage_Buffer,
                              byAngleInDegrees angleInDegrees: Double,
                              backgroundColor: [Pixel_8] = [0, 127, 127, 127]) {
         
         let angle = Measurement(value: angleInDegrees,
                                 unit: UnitAngle.degrees)
         let radians = Float(angle.converted(to: .radians).value)
         
         _ = withUnsafePointer(to: source) { srcPointer in
             vImageRotate_ARGB8888(srcPointer,
                                   &destination,
                                   nil,
                                   radians,
                                   backgroundColor,
                                   vImage_Flags(kvImageBackgroundColorFill))
         }
     }
     ============================================================
     */
    
    /**
     Scale a vImage Buffer

     The vImage library provides functions to scale the contents
     of an image buffer. The scaling can either be uniform, where
     the operation preserves the image’s aspect ratio, or nonuniform,
     where the operation stretches or condenses the image. The
     following shows four scaled versions of the same image, with
     the second and third image scaled nonuniformly.
     file:///Users/tigerfly/Desktop/rendered2x-1599235574.png

     The vImage scale functions accept source and destination buffers
     as parameters and rescale the source to fill the destination
     buffer. The following function wraps vImageScale_ARGB8888 to
     provide a simple interface to the scale operation:
     ============================================================
     static func scaleBuffer(source: vImage_Buffer,
                             destination: inout vImage_Buffer) {
         
         _ = withUnsafePointer(to: source) { sourcePointer in
             vImageScale_ARGB8888(sourcePointer,
                                  &destination,
                                  nil,
                                  vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================
     */
    
    
    /**
     Apply a Simple Affine Transform to a vImage Buffer
     
     Use an affine transform to apply composite transforms, for
     example a scale and translate.
     Affine transforms are represented by a 3 by 3 matrix:
     A 3 by 3 matrix.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/equation01_2x_fabc9070-1967-4d6f-a086-17ab5fcfef6d.png
     
     Because the third column is always (0,0,1), the
     vImage_CGAffineTransform data structure contains values
     for only the first two columns.
     
     To perform a scale transform, set the a and d parameters
     of the transform matrix to the required scale.
     A 3 by 3 matrix used to scale.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/equation08_2x_1294061e-22f0-48f7-962a-51d31c17614f.png

     To perform the translate transform, set the tx and ty
     parameters of the matrix to the required offset.
     A 3 by 3 matrix for translation.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/equation06_2x_7bc0c515-45dd-4adf-a3f1-426c6ef109f1.png

     The scaleAndCenterBuffer(source:destination:to:backgroundColor:)
     function accepts a scale parameter and sets that parameter
     as the a and d parameters of the transform matrix:
     
     ============================================================
     static func scaleAndCenterBuffer(source: vImage_Buffer,
                                      destination: inout vImage_Buffer,
                                      to scale: Double,
                                      backgroundColor: [Pixel_8] = [0, 127, 127, 127]) {
         
         // 1. Calculate the translate required to center the scaled buffer.
         let sourceCenter = SIMD2<Double>(
             x: Double(source.size.width / 2),
             y: Double(source.size.height / 2))
         
         let desinationCenter = SIMD2<Double>(
             x: Double(destination.size.width / 2),
             y: Double(destination.size.height / 2))
         
         let tx = desinationCenter.x - sourceCenter.x * scale
         let ty = desinationCenter.y - sourceCenter.y * scale
         
         // 2. Create the affine transform that represents the scale-translate.
         var vImageTransform = vImage_CGAffineTransform(
             a: scale, b: 0,
             c: 0,     d: scale,
             tx: tx,   ty: ty)

         // 3. Apply the transform to `source` and write the result to `destination`.
         _ = withUnsafePointer(to: source) { srcPointer in
             vImageAffineWarpCG_ARGB8888(srcPointer,
                                         &destination,
                                         nil,
                                         &vImageTransform,
                                         backgroundColor,
                                         vImage_Flags(kvImageBackgroundColorFill))
         }
     }
     ============================================================
     
     The following image shows the result of applying
     scaleAndCenterBuffer(_:to:backgroundColor:) with a scale of 0.25:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599151654.png
     */
    
    
    /**
     Apply a Complex Affine Transform to a vImage Buffer

     For complex transforms, CGAffineTransform allows you to concenate
     a series of transforms. For example, to rotate and scale an
     image to fit within its unrotated bounding box, your code needs
     to translate, rotate, scale, and translate again.
     
     The rotateAndScaleBuffer(source:destination:byAngleInDegrees:backgroundColor:)
     function uses CGAffineTransform to build the affine transform
     matrix required to rotate and scale an image to fit inside the
     bounding box of the destination buffer:
     ============================================================
     static func rotateAndScaleBuffer(source: vImage_Buffer,
                                      destination: inout vImage_Buffer,
                                      byAngleInDegrees angleInDegrees: Double,
                                      backgroundColor: [Pixel_8] = [0, 127, 127, 127]) {
         
         // 1. Convert the specified angle in degrees to radians.
         let angle = Measurement(value: angleInDegrees,
                                 unit: UnitAngle.degrees)
         let radians = CGFloat(angle.converted(to: .radians).value)
         
         // 2. Calculate the scale based on the bounding box of the rotated image.
         let rotatedBoundingBox = CGRect(origin: .zero, size: source.size)
             .applying(CGAffineTransform(rotationAngle: radians))
         let scale = min(destination.size.width / rotatedBoundingBox.size.width,
                         destination.size.height / rotatedBoundingBox.size.height)
         
         // 3. Create the composite affine transform.
         let cgTransform = CGAffineTransform.identity
             .translatedBy(x: destination.size.width / 2,
                           y: destination.size.height / 2)
             .rotated(by: radians)
             .scaledBy(x: scale, y: scale)
             .translatedBy(x: -source.size.width / 2,
                           y: -source.size.height / 2)
         
         // 4. Convert the `CGAffineTransform` to a `vImage_CGAffineTransform`.
         var vImageTransform = vImage_CGAffineTransform(
             a: Double(cgTransform.a),
             b: Double(cgTransform.b),
             c: Double(cgTransform.c),
             d: Double(cgTransform.d),
             tx: Double(cgTransform.tx),
             ty: Double(cgTransform.ty))
         
         // 5. Apply the transform to `source` and write the result to `destination`.
         _ = withUnsafePointer(to: source) { srcPointer in
             vImageAffineWarpCG_ARGB8888(srcPointer,
                                         &destination,
                                         nil,
                                         &vImageTransform,
                                         backgroundColor,
                                         vImage_Flags(kvImageBackgroundColorFill))
         }
     }
     ============================================================

     The following image shows the result of applying rotateAndScaleBuffer(_:byAngleInDegrees:backgroundColor:) with
     an angle of 30º:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1599152884.png
     */

    
    /**
     Optimizing Performance with Temporary Buffers

     The vImage rotate, scale, and affine transform functions
     use multiple-pass algorithms that save intermediate pixel
     values between passes. In some cases, the destination buffer
     may not be large enough to store that intermediate data and
     the operation would require additional, temporary storage.
     
     Pass nil to the function to have vImage create and manage
     this temporary storage for you. For example, the following
     scale function relies on the operation to manage the
     temporary buffer:
     ============================================================
     static func scaleBuffer(source: vImage_Buffer,
                             destination: inout vImage_Buffer) {
         
         _ = withUnsafePointer(to: source) { sourcePointer in
             vImageScale_ARGB8888(sourcePointer,
                                  &destination,
                                  nil,
                                  vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================

     In cases where your code calls the function frequently (for
     example, when processing video), create and manage this
     temporary buffer yourself and reuse it across function calls.
     Reusing a buffer avoids vImage allocating the temporary storage
     with each call. Pass kvImageGetTempBufferSize to your geometry
     function to calculate the size, in bytes, of the temporary
     buffer, and use that value to allocate a UnsafeMutableRawPointer
     structure.
     
     The following scale function shows an example of creating a
     temporary buffer:
     ============================================================
     static func scaleBuffer(source: vImage_Buffer,
                             destination: inout vImage_Buffer) {
         
         withUnsafePointer(to: source) { sourcePointer in
             let bufferSize = vImageScale_ARGB8888(sourcePointer,
                                                   &destination,
                                                   nil,
                                                   vImage_Flags(kvImageGetTempBufferSize))
             
             if bufferSize < 0 {
                 fatalError("Error calculating buffer size for scale operation (\(bufferSize)).")
             }
             
             // In a real app, you'd reuse this buffer across multiple calls of `vImageScale_ARGB8888`.
             let temporaryBuffer = UnsafeMutableRawPointer.allocate(byteCount: bufferSize,
                                                                    alignment: 64)
             defer {
                 temporaryBuffer.deallocate()
             }
             
             vImageScale_ARGB8888(sourcePointer,
                                  &destination,
                                  temporaryBuffer,
                                  vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================
     */
    
    
#pragma mark -- Compositing Images with Alpha Blending
    
    /*
     Combine two images by using alpha blending to create a single
     output.
     
     vImage provides a suite of functions for compositing two source
     images into one output. Alpha blending uses the alpha value
     of each pixel in the top layer to determine the visibility
     of the bottom layer.
     
     The following shows the alpha composite of an image of a building
     with a transparent background over an image of a texture. The
     transparent part of the building image has an alpha of zero,
     indicating the background layer is fully visible.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1603974051.png
     */
    
    /**
     Perform an Alpha Composite
     
     Use the vImagePremultipliedAlphaBlend_ARGB8888 function to
     blend two images when the top image contains alpha information
     (for example, when compositing text over a photograph). The
     images that you pass to vImagePremultipliedAlphaBlend_ARGB8888
     must have the premultiplied alpha information in the first
     channel.
     
     The following function performs an alpha composite of two
     CGImageRef instances and returns the result as a CGImageRef
     instance:
     ============================================================
     func alphaComposite(topImage: CGImage, bottomImage: CGImage) -> CGImage? {
         // Create source and destination vImage buffers.
         guard
             let topImageBuffer = try? vImage_Buffer(cgImage: topImage),
             let bottomImageBuffer = try? vImage_Buffer(cgImage: bottomImage),
             var destinationImageBuffer = try? vImage_Buffer(size: topImageBuffer.size,
                                                             bitsPerPixel: 8 * 4)
         else {
             return nil
         }
         
         defer {
             topImageBuffer.free()
             bottomImageBuffer.free()
             destinationImageBuffer.free()
         }

         withUnsafePointer(to: topImageBuffer) { topPtr in
             withUnsafePointer(to: bottomImageBuffer) { bottomPtr in
                 
                 // Ensure the bottom image and top image are ARGB.
                 convertToARGB(bottomPtr, alphaInfo: bottomImage.alphaInfo)
                 convertToARGB(topPtr, alphaInfo: topImage.alphaInfo)
                 
                 // Ensure the top layer is premultiplied.
                 premultiply(topPtr, alphaInfo: topImage.alphaInfo)

                 // Perform the composite operation.
                 vImagePremultipliedAlphaBlend_ARGB8888(topPtr,
                                                        bottomPtr,
                                                        &destinationImageBuffer,
                                                        vImage_Flags(kvImageNoFlags))
             }
         }
         
         if let destinationFormat = vImage_CGImageFormat(
             bitsPerComponent: 8,
             bitsPerPixel: 8 * 4,
             colorSpace: CGColorSpaceCreateDeviceRGB(),
             bitmapInfo: CGBitmapInfo(rawValue: CGImageAlphaInfo.first.rawValue)) {
             return try? destinationImageBuffer.createCGImage(format: destinationFormat)
         }
         return nil
     }
     ============================================================
     
     Because the blending function vImagePremultipliedAlphaBlend_ARGB8888
     requires the source buffers ordered with the alpha channel first,
     the code calls convertToARGB(_:alphaInfo:) to ensure the correct
     ordering. The convertToARGB(_:alphaInfo:) function checks the
     channel ordering from the source image’s alpha information and
     permutes the channels if the ordering isn’t alpha first.
     ============================================================
     func convertToARGB(_ buffer: UnsafePointer<vImage_Buffer>,
                        alphaInfo: CGImageAlphaInfo) {
         
         let alphaLasts = [ CGImageAlphaInfo.last,
                            CGImageAlphaInfo.premultipliedLast,
                            CGImageAlphaInfo.noneSkipLast ]
         
         if alphaLasts.contains(alphaInfo) {
             vImagePermuteChannels_ARGB8888(buffer,
                                            buffer,
                                            [3, 0, 1, 2],
                                            vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================

     The premultiply(_:alphaInfo:) function uses a CGImageRef
     instance’s alpha information to determine whether an image
     contains premultiplied alpha. This function ensures that the
     top layer that the function passes to the composite operation
     contains premultiplied pixels.
     ============================================================
     func premultiply(_ buffer: UnsafePointer<vImage_Buffer>,
                      alphaInfo: CGImageAlphaInfo) {
         
         let premultiplieds = [ CGImageAlphaInfo.premultipliedFirst,
                                CGImageAlphaInfo.premultipliedLast ]
         
         if !premultiplieds.contains(alphaInfo) {
             vImagePremultiplyData_ARGB8888(buffer,
                                            buffer,
                                            vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================
     */

    /**
     Perform an Alpha Composite with a Single Alpha Value

     vImage provides functions to perform an alpha composite
     using a single alpha value. The functions apply the constant
     alpha value you supply combined with the top image’s existing
     alpha to the top layer’s color channels and alpha channels.
     For each pixel, the constant alpha functions perform the
     following operation:
     ============================================================
     destColor = (srcTopColor * constAlpha * 255  + (255*255 - srcTopAlpha * constAlpha) * srcBottomColor + 127*255) / (255*255);
     destAlpha =  (srcTopAlpha * constAlpha * 255 + (255*255 - srcTopAlpha * constAlpha) * srcBottomAlpha + 127*255 ) / (255*255);
     ============================================================

     To perform an alpha composite with a constant alpha, replace
     the call to vImagePremultipliedAlphaBlend_ARGB8888 in the
     code listing in Perform an Alpha Composite with the following code:
     ============================================================
     // Perform the composite operation.
     vImagePremultipliedConstAlphaBlend_ARGB8888(topPtr,
                                                 Pixel_8(191),
                                                 bottomPtr,
                                                 &destinationImageBuffer,
                                                 vImage_Flags(kvImageNoFlags))
     ============================================================

     The following image shows the result of compositing with
     vImagePremultipliedConstAlphaBlend_ARGB8888 using a constant
     alpha with a value of 191. The background of the building
     remains transparent, but the parts of the image that were
     originally opaque now show some of the lower layer.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600699477.png
     */
    
    /**
     Perform an Alpha Composite with an Overwritten Alpha Channel

     Use the vImageOverwriteChannels_ARGB8888 function to overwrite
     an image’s alpha channel. The following shows an example of
     setting a radial gradient as the alpha channel of an image to
     produce a vignette style blend:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1606811774.png
     
     The vImageOverwriteChannels_ARGB8888 function requires buffers with
     unpremultiplied alpha.
     
     The radialComposite(topImage:bottomImage:) function performs an
     alpha composite of two CGImageRef instances with a procedural
     radial gradient:
     ============================================================
     func radialComposite(topImage: CGImage,
                          bottomImage: CGImage) -> CGImage? {
         // Create source and destination vImage buffers.
         guard
             let topImageBuffer = try? vImage_Buffer(cgImage: topImage),
             let bottomImageBuffer = try? vImage_Buffer(cgImage: bottomImage),
             var gradientImageBuffer = try? vImage_Buffer(size: topImageBuffer.size,
                                                          bitsPerPixel: 8),
             var destinationImageBuffer = try? vImage_Buffer(size: topImageBuffer.size,
                                                             bitsPerPixel: 8 * 4)
         else {
             return nil
         }
         
         defer {
             topImageBuffer.free()
             bottomImageBuffer.free()
             gradientImageBuffer.free()
             destinationImageBuffer.free()
         }
         
         withUnsafePointer(to: topImageBuffer) { topPtr in
             withUnsafePointer(to: bottomImageBuffer) { bottomPtr in
                 
                 // Ensure the top image and the bottom image are ARGB.
                 convertToARGB(topPtr, alphaInfo: topImage.alphaInfo)
                 convertToARGB(bottomPtr, alphaInfo: bottomImage.alphaInfo)
                 
                 // Populate `gradientImageBuffer` with a radial gradient.
                 makeRadialGradient(&gradientImageBuffer)
                 
                 // Unpremultiply before overwrite if required.
                 unpremultiply(topPtr, alphaInfo: topImage.alphaInfo)
                 
                 // Overwrite the top layers's alpha channel with the radial gradient.
                 vImageOverwriteChannels_ARGB8888(&gradientImageBuffer,
                                                  topPtr, topPtr,
                                                  0x8,
                                                  vImage_Flags(kvImageNoFlags))
                 
                 // Premultiply the top layer.
                 vImagePremultiplyData_ARGB8888(topPtr, topPtr,
                                                vImage_Flags(kvImageNoFlags))
                 
                 // Perform the alpha blend of the top layer over the bottom layer.
                 vImagePremultipliedAlphaBlend_ARGB8888(topPtr,
                                                        bottomPtr,
                                                        &destinationImageBuffer,
                                                        vImage_Flags(kvImageNoFlags))
             }
         }
         
         if let destinationFormat = vImage_CGImageFormat(
             bitsPerComponent: 8,
             bitsPerPixel: 8 * 4,
             colorSpace: CGColorSpaceCreateDeviceRGB(),
             bitmapInfo: CGBitmapInfo(rawValue: CGImageAlphaInfo.first.rawValue)) {
             return try? destinationImageBuffer.createCGImage(format: destinationFormat)
         }
         return nil
     }
     ============================================================
     
     The code calls unpremultiply(_:alphaInfo:) to unpremultiply
     an image if its alpha information indicates it contains
     premultiplied pixels.
     ============================================================
     func unpremultiply(_ buffer: UnsafePointer<vImage_Buffer>,
                        alphaInfo: CGImageAlphaInfo) {
         
         let premultiplieds = [ CGImageAlphaInfo.premultipliedFirst,
                                CGImageAlphaInfo.premultipliedLast ]
         
         if premultiplieds.contains(alphaInfo) {
             vImageUnpremultiplyData_ARGB8888(buffer,
                                              buffer,
                                              vImage_Flags(kvImageNoFlags))
         }
     }
     ============================================================

     The radialComposite(topImage:bottomImage:) function calls
     makeRadialGradient(_:) to populate the gradient buffer with
     a radial gradient. The code generates the radial gradient
     by multiplying a height * 1 matrix by a 1 * width matrix.
     Both factors contain values that follow a bell-shaped curve.
     ============================================================
     func makeRadialGradient(_ destination: inout vImage_Buffer) {
         let width = Int(destination.size.width)
         let height = Int(destination.size.height)
         
         var gradientValues = [Float](unsafeUninitializedCapacity: width * height) {
             buffer, initializedCount in
             
             let verticalWindow = vDSP.window(ofType: Float.self,
                                              usingSequence: .hanningDenormalized,
                                              count: height,
                                              isHalfWindow: false)
             
             let horizontalWindow = vDSP.window(ofType: Float.self,
                                                usingSequence: .hanningDenormalized,
                                                count: width,
                                                isHalfWindow: false)
             
             vDSP_mmul(verticalWindow, 1,
                       horizontalWindow, 1,
                       buffer.baseAddress!, 1,
                       vDSP_Length(height),
                       vDSP_Length(width), 1)
             
             initializedCount = width * height
         }.map {
             return Pixel_8($0 * Float(Pixel_8.max))
         }
         
         gradientValues.withUnsafeMutableBufferPointer { gradientPtr in
             let gradientBuffer = vImage_Buffer(data: gradientPtr.baseAddress,
                                                height: vImagePixelCount(height),
                                                width: vImagePixelCount(width),
                                                rowBytes: width)
             
             try? gradientBuffer.copy(destinationBuffer: &destination,
                                      pixelSize: 1)
         }
     }
     ============================================================
     */
    
    
#pragma mark -- Compositing Images with vImage Blend Modes
    
    /**
     Combine two images by using blend modes to create a single output.

     vImage provides a suite of functions for compositing two
     source images into one output. These blend mode functions
     implement different algorithms to determine the output
     color. For example, the multiply blend mode sets each
     output pixel as the product of the two corresponding
     input pixels.
     
     The blend mode functions work on 8-bit RGBA source images
     in premultiplied format. You can convert a nonpremultiplied
     buffer to premultiplied format by using vImagePremultiplyData_ARGB8888.
     
     The blend mode functions accept two vImage_Buffer structures
     as the bottom and top layers of the compositing operation.
     The examples that follow use the image below on the left as
     the bottom layer and the image below on the right as the
     top layer.
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600340426.png
     
     The top-layer source image consists of four sections:
     •  The top-left quadrant is solid white ([255, 255, 255]).
     •  The top-right quadrant is identical to the corresponding quadrant of the bottom image.
     •  The bottom-left quadrant is solid mid-gray ([127, 127, 127]).
     •  The bottom-right quadrant is solid black ([0, 0, 0]).
     
     Both images are fully opaque.
     */
        
    
    /**
     Composite Images Using the Lighten Blend Mode

     Use the vImagePremultipliedAlphaBlendLighten_RGBA8888 function
     to composite two layers using the lighten blend mode. You can
     use the lighten blend mode to apply an overall lightening
     effect to images.
     
     The lighten blend mode sets each channel of the destination
     pixel as the lightest value for the corresponding channel
     of the two source layers. The following image shows the
     result of compositing using the lighten blend mode:
     
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600340433.png
     
     The top-left quadrant in the result is white because no pixels
     in the bottom layer are brighter than the corresponding pixels
     in the top layer.
     
     The bottom-left quadrant in the result looks washed out because
     the operation selects gray pixels from the top layer over
     corresponding dark pixels from the bottom layer.
     */
    
    
    /**
     Composite Images Using the Darken Blend Mode

     Use the vImagePremultipliedAlphaBlendDarken_RGBA8888 function
     to composite two layers using the darken blend mode. You can
     use the darken blend mode to apply an overall darkening
     effect to images.
     
     The darken blend mode sets each channel of the destination
     pixel as the darkest value for the corresponding channel of
     the two source layers. The following image shows the result
     of compositing using the darken blend mode:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600340439.png
     
     The top-left quadrant in the result is white because no
     pixels in the bottom layer are brighter than the corresponding
     pixels in the top layer.
     
     The bottom-left quadrant in the result looks washed out because
     the operation selects gray pixels from the top layer over
     corresponding dark pixels from the bottom layer.
     */
    
    /**
     Composite Images Using the Screen Blend Mode

     Use the vImagePremultipliedAlphaBlendScreen_RGBA8888 function
     to composite two layers using the screen blend mode. You can
     use the screen blend mode to lighten images without affecting
     the darkest areas.
     
     The screen blend mode sets the destination pixel as the
     inverted product of the inverted corresponding source pixels.
     The following image shows the result of compositing using
     the screen blend mode:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600340452.png
     
     The bottom-right quadrant in the result is identical to the
     corresponding quadrant in the bottom layer because the operation
     multiplies each bottom-layer pixel value by 1.0. For example,
     if the source pixel value is 0.5, the destination pixel value
     is 0.5:
     ============================================================
     dest = 1 - (1 - 0.5) * (1 - 0.0) // dest = 0.5
     ============================================================
     
     The top-right quadrant in the result is brighter than the
     corresponding quadrant in the bottom layer. In this quadrant,
     the top-layer and bottom-layer pixel values are identical.
     For example, if the source pixel value is 0.5, the destination
     pixel value is 0.75:
     ============================================================
     dest = 1 - (1 - 0.5) * (1 - 0.5) // dest = 0.75
     ============================================================
     */
    
    /**
     Composite Images Using the Multiply Blend Mode

     Use the vImagePremultipliedAlphaBlendMultiply_RGBA8888 function
     to composite two layers using the multiply blend mode. You can
     the use multiply blend mode to darken images without affecting
     the lightest areas.
     
     The multiply blend mode sets the destination pixel as the product
     of the corresponding source pixels. The following image shows
     the result of compositing using the multiply blend mode:
     file:///Users/tigerfly/Desktop/Accelerate/Accelerate/rendered2x-1600340445.png

     The bottom-right quadrant in the result is black because the
     operation multiplies each bottom-layer pixel value by 0.0
     from the top layer.
     
     The top-left quadrant in the result is identical to the
     corresponding quadrant in the bottom layer because the operation
     multiplies each bottom-layer pixel value by 1.0.
     
     The top-right quadrant in the result is darker than the corresponding
     quadrant in the bottom layer. In this quadrant, the top-layer
     and bottom-layer pixel values are identical. For example, if
     the source pixel value is 0.5, the destination pixel value is
     0.25:
     ============================================================
     dest = 0.5 * 0.5 // dest = 0.25
     ============================================================
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

//
//  Compression.m
//  Accelerate
//
//  Created by tigerfly on 2021/1/5.
//  Copyright © 2021 tigerfly. All rights reserved.
//

#import "Compression.h"

@interface Compression ()

@end

@implementation Compression

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Compressing and Decompressing Data with Buffer Compression
    
    /*
     Compress a string, write it to the file system, and decompress
     the same file using buffer compression.

     In this article, you'll learn how to compress and decompress
     a String instance.
     */
    
    /**
     Create the Source Data

     Typically, your app would dynamically generate the source
     data that it compresses, but for this example, the source data
     is a hard-coded string:
     ===========================================================
     let sourceString = """
         Lorem ipsum dolor sit amet consectetur adipiscing elit mi
         nibh ornare proin blandit diam ridiculus, faucibus mus
         dui eu vehicula nam donec dictumst sed vivamus bibendum
         aliquet efficitur. Felis imperdiet sodales dictum morbi
         vivamus augue dis duis aliquet velit ullamcorper porttitor,
         lobortis dapibus hac purus aliquam natoque iaculis blandit
         montes nunc pretium.
         """

     var sourceBuffer = Array(sourceString.utf8)
     ===========================================================

     On return, sourceBuffer is an array of UInt8 values containing
     the UTF-8 representation of the source string.
     */
    
    /**
     Create the Destination Buffer

     Create an UnsafeMutablePointer structure and allocate it with
     a capacity of the source string's count to receive the encoded data:
     ===========================================================
     let destinationBuffer = UnsafeMutablePointer<UInt8>.allocate(capacity: sourceString.count)
     ===========================================================
     */
    
    /**
     Select a Compression Algorithm

     If speed and compression ratio are important, use COMPRESSION_LZFSE:
     ===========================================================
     let algorithm = COMPRESSION_LZFSE
     ===========================================================
     
     If you require interoperability with non-Apple devices, use
     COMPRESSION_ZLIB instead. For more information about other
     compression algorithms, see compression_algorithm.
     */
    
    /**
     Compress the Data
     
     The compression_encode_buffer function compresses the data,
     writing the result to the destination buffer and returning
     the size of the encoded data:
     ===========================================================
     let compressedSize = compression_encode_buffer(destinationBuffer, sourceString.count,
     &sourceBuffer, sourceString.count,
     nil,
     algorithm)
     ===========================================================

     When working with small files, the compression may fail and
     compression_encode_buffer returns 0:
     ===========================================================
     if compressedSize == 0 {
         fatalError("Encoding failed.")
     }
     ===========================================================

     You may elect to handle this situation differently, for example,
     by displaying a warning to the user that the compression failed.
     */
    
    
    
    /**
     Write the Encoded Data to a File

     The following code writes the encoded data to a file in
     the the app's temporary directory on macOS:
     ===========================================================
     let encodedFileName = "stringEncoded.LZFSE"

     let tempDirURL = NSURL(fileURLWithPath: NSTemporaryDirectory())

     guard
         let encodedFileURL = tempDirURL.appendingPathComponent(encodedFileName) else {
             return
     }

     FileManager.default.createFile(atPath: encodedFileURL.path,
                                    contents: nil,
                                    attributes: nil)

     guard let destinationFileHandle = try? FileHandle(forWritingTo: encodedFileURL) else {
         print("destinationFileHandle fail.")
         return
     }

     let encodedData = NSData(bytesNoCopy: destinationBuffer,
                              length: compressedSize)

     destinationFileHandle.write(encodedData as Data)
     destinationFileHandle.closeFile()
     ===========================================================
     */
    
    /**
     Read the Encoded Data from a File

     To read the encoded file, create a file handle for reading
     for the encoded file's URL:
     ===========================================================
     guard
         let encodedFileHandle = try? FileHandle(forReadingFrom: encodedFileURL) else {
             print("encodedFileHandle fail.")
             return
     }
     ===========================================================

     Use the file handle to read the entire encoded data and
     populate encodedSourceData:
     ===========================================================
     let encodedSourceData = encodedFileHandle.readDataToEndOfFile()
     ===========================================================
     */
    
    
    /**
     Decompress the Data

     Allocate memory to contain the decoded data. Typically,
     the encoded payload would be part of a larger structure
     containing additional metadata such as the uncompressed
     size, and you'd use that to define the buffer capacity.
     However, for this example, allocate 8 MB:
     ===========================================================
     let decodedCapacity = 8_000_000
     let decodedDestinationBuffer = UnsafeMutablePointer<UInt8>.allocate(capacity: decodedCapacity)
     ===========================================================

     Use compression_decode_buffer to decode the raw bytes of the
     encoded source data, writing the result to decodedDestinationBuffer.
     You can create a string from the destination buffer using
     the init(cString:) initializer:
     ===========================================================
     let decodedString: String = encodedSourceData.withUnsafeBytes { encodedSourceBuffer in
         let typedPointer = encodedSourceBuffer.bindMemory(to: UInt8.self)
         let decodedCharCount = compression_decode_buffer(decodedDestinationBuffer, decodedCapacity,
                                                          typedPointer.baseAddress!, encodedSourceData.count,
                                                          nil,
                                                          algorithm)
         
         print("Buffer decompressedCharCount", decodedCharCount)
         
         return String(cString: decodedDestinationBuffer)
     }
     ===========================================================

     The compression_decode_buffer function returns the size
     of the decoded data. If the decompression fails, the size
     returned is zero. This may indicate that the memory
     allocated to the destination buffer is insufficient and
     you should switch to the stream API or retry with a larger buffer.
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

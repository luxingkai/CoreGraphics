//
//  DirectoriesFilesDataArchives.m
//  Accelerate
//
//  Created by tigerfly on 2021/1/5.
//  Copyright © 2021 tigerfly. All rights reserved.
//

#import "DirectoriesFilesDataArchives.h"

@interface DirectoriesFilesDataArchives ()

@end

@implementation DirectoriesFilesDataArchives

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
#pragma mark -- Compressing Single Files
    
    /*
     Compress a single file and store the result on the file system.

     In this article, you’ll learn how to use AppleArchive to
     compress a single-source file, and write the compressed
     data to a file.
     
     The code below compresses a file named myFile.pdf using the
     Algorithm.lzfse algorithm, and stores the result in a file
     named myFile.pdf.lzfse.
     */
    
    /**
     Create the File Stream to Read the Source File

     The ArchiveByteStream class provides static factory methods
     that create streams for different functions. In this case,
     use fileStream(path:mode:options:permissions:) to create a
     byte stream that reads the source file:
     ==================================================
     let sourceFilePath = FilePath(NSTemporaryDirectory() + "myFile.pdf")

     guard let readFileStream = ArchiveByteStream.fileStream(
             path: sourceFilePath,
             mode: .readOnly,
             options: [ ],
             permissions: FilePermissions(rawValue: 0o644)) else {
         return
     }
     defer {
         try? readFileStream.close()
     }
     ==================================================
     */
    
    
    /**
     Create the File Stream to Write the Compressed File

     You also use fileStream(path:mode:options:permissions:) to
     create the file stream that writes the compressed file to
     the file system. In this case, use the writeOnly mode:
     ==================================================
     let archiveFilePath = FilePath(NSTemporaryDirectory() + "myFile.pdf.lzfse")

     guard let writeFileStream = ArchiveByteStream.fileStream(
             path: archiveFilePath,
             mode: .writeOnly,
             options: [ .create ],
             permissions: FilePermissions(rawValue: 0o644)) else {
         return
     }
     defer {
         try? writeFileStream.close()
     }
     ==================================================
     */
    
    
    /**
     Create the Compression Stream

     Create the compression stream, and specify the compression
     algorithm as lzfse. Specify the file-writing stream as the
     stream that receives the compressed data:
     ==================================================
     guard let compressStream = ArchiveByteStream.compressionStream(
             using: .lzfse,
             writingTo: writeFileStream) else {
         return
     }
     defer {
         try? compressStream.close()
     }
     ==================================================
     */
    
    
    /**
     Compress the Source File

     Finally, call process(readingFrom:writingTo:) to send the
     output of the file-reading stream to the compression stream.
     In turn, the compression stream sends its output to the
     file-writing stream:
     ==================================================
     do {
         _ = try ArchiveByteStream.process(readingFrom: readFileStream,
                                           writingTo: compressStream)
     } catch {
         print("Handle `ArchiveByteStream.process` failed.")
     }
     ==================================================

     On return, myFile.pdf.lzfse exists in NSTemporaryDirectory and
     contains the compressed contents of myFile.pdf.
     */
    
    
#pragma mark -- Decompressing Single Files
    
    /*
     Recreate a single file from a compressed file.
     
     In this article, you’ll learn how to use AppleArchive to decompress
     a previously compressed file, and write the decompressed data to a file.
     
     The code below decompresses the file generated using the steps explained
     in Compressing Single Files.
     */
    
    /**
     Create the File Stream to Read the Source Archive

     The ArchiveByteStream class provides static factory methods
     that create streams for different functions. In this case,
     use fileStream(path:mode:options:permissions:) to create a
     byte stream that reads the source file:
     ==================================================
     let archiveFilePath = FilePath(NSTemporaryDirectory() + "myFile.pdf.lzfse")

     guard let readFileStream = ArchiveByteStream.fileStream(
             path: archiveFilePath,
             mode: .readOnly,
             options: [ ],
             permissions: FilePermissions(rawValue: 0o644)) else {
         return
     }
     defer {
         try? readFileStream.close()
     }
     ==================================================

     
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

//
//  FNFileManager.h
//  FNFileManager
//  version 1.0
//  Created by Fabio_Nisci on 12/09/2011.
//  Copyright 2011 Fabio Nisci. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FNFileManager : NSObject{
    
}

-(NSString *) saveFile:(NSString *)FileName withString:(NSString *)stringToSave;
-(NSString *) readFile:(NSString *)FileName;
-(BOOL)deleteFile:(NSString *)FileName;
@end

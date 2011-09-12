//
//  FNFileManager_ExampleViewController.h
//  FNFileManager_Example
//
//  Created by Fabio_MacBook on 12/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FNFileManager.h"
@interface FNFileManager_ExampleViewController : UIViewController{
    
    IBOutlet UITextView *textView;
    IBOutlet UILabel *lblStatus;
}

-(IBAction)read;
-(IBAction)write;
-(IBAction)delFile;
@end

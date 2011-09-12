//
//  FNFileManager_ExampleViewController.m
//  FNFileManager_Example
//
//  Created by Fabio_MacBook on 12/09/2011.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "FNFileManager_ExampleViewController.h"

@implementation FNFileManager_ExampleViewController

-(IBAction)write{
    FNFileManager *fileManager=[[[FNFileManager alloc]init]autorelease];
    NSString *stringToSave=@"Hello FNFileManager!";
    NSString *fileStatus =[fileManager saveFile:@"example.txt" withString:stringToSave];
    if (fileStatus!=nil) {
        lblStatus.text=@"Saved";
    }
    else{
        lblStatus.text=@"Error";
    }
}
-(IBAction)read{
    FNFileManager *fileManager=[[[FNFileManager alloc]init]autorelease];
    NSString *textSaved=[fileManager readFile:@"example.txt"];
    if (textSaved!=nil) {
        lblStatus.text=@"";
        textView.text=textSaved;
    }
    else{
        lblStatus.text=@"No file saved";
    }
    

}
-(IBAction)delFile{
    FNFileManager *fileManager=[[[FNFileManager alloc]init]autorelease];
    BOOL returnDel=[fileManager deleteFile:@"example.txt"];
    if (returnDel==YES) {
        lblStatus.text=@"file deleted";
    }
    else{
        lblStatus.text=@"file cannot be deleted";
    }
}
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end

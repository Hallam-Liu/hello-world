//
//  AppDelegate.h
//  Russian
//
//  Created by macbook on 16/12/28.
//  Copyright © 2016年 macbook. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>{
    
    IBOutlet NSWindow *mainWindow;
    IBOutlet NSImageView *loginPicture;
    IBOutlet NSWindow *login;
    IBOutlet NSWindow *loadPicture;
    IBOutlet NSTextField *Username;
    IBOutlet NSTextField *Password;
    IBOutlet NSWindow *registerWin;
    NSMutableArray *Userarray;
    NSMutableArray *Pswarray;
    IBOutlet NSProgressIndicator *progress;

}

-(IBAction) btOK:(id)sender;
-(IBAction)btCancel:(id)sender;
-(IBAction)btregister:(id)sender;
@end


//
//  AppDelegate.m
//  Russian
//
//  Created by macbook on 16/12/28.
//  Copyright © 2016年 macbook. All rights reserved.
//
#import "Register.h"
#import "AppDelegate.h"
@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    Userarray=[[NSMutableArray alloc]init];
    Pswarray=[[NSMutableArray alloc]init];//必须先分配内存，否则加载不进去字符串。
    [progress startAnimation:nil];
    [loadPicture center];
    [Userarray addObject:@"Liuhr"];
    [Pswarray addObject:@"79"];
    [self checklogin:nil];
    }
-(void)awakeFromNib{
    
    [loginPicture setImage:[NSImage imageNamed:@"loginpicture.jpeg"]];
   
}
/*
-(void)initWithUserarray{
        
        [Userarray addObject:@"Liuhr"];
        [Pswarray addObject:@"79"];
        [self initWithUserarray];
        [self checklogin:nil];
    
    
}
*/
-(void)checklogin:(id)sender
{
    if ([NSApp runModalForWindow:login]==YES){
        [[Username stringValue]UTF8String];
        [[Password stringValue]UTF8String];
        [loadPicture center];
    }

}
-(void)browseArray:(NSMutableArray*)obj1 :(NSString*)obj2{
    int i=0;
    for(id j in obj1){
        if ([obj2 isEqualToString: [[obj1 objectAtIndex:j]stringValue]]){
            [NSApp stopModalWithCode:NO];
            [login orderOut:nil];
            [loadPicture orderOut:nil];
            [mainWindow makeKeyAndOrderFront:nil];
        }
    }
}

-(IBAction)btOK:(id)sender{
   
//    NSLog(@"%@",[Userarray objectAtIndex:0]);
//    [Username setStringValue:@"Liuhr"];
//    if([Username.stringValue isEqualToString: [Userarray objectAtIndex:0]]){
//    
//        [NSApp stopModalWithCode:YES];
//        [login orderOut:nil];
//        [loadPicture orderOut:nil];
//        [mainWindow makeKeyAndOrderFront:nil];
//    }
//        else
//        {NSRunAlertPanel(@"Login", @"Incorrectly password,try again!", @"OK", nil, nil);
//        }
//    }
   /*
    if([self browseArray:Userarray :Username.stringValue ]!=nil)
    {
        if([self browseArray:Pswarray :Password.stringValue]!=nil)
        {
            [login orderOut:nil];
            [loadPicture orderOut:nil];
            [mainWindow makeKeyAndOrderFront:nil];

        }
        else  {NSRunAlertPanel(@"Login", @"Incorrectly password,try again!", @"OK", nil, nil);}
    }
    else  NSRunAlertPanel(@"Login", @"Incorrectly username,try again!", @"OK", nil, nil);*/

//            int i=0;
//            NSString *sd = [Userarray objectAtIndex:i];
//            NSLog(@"j=%@",sd);
            BOOL userResult = [Userarray containsObject:Username.stringValue];
            if(userResult)
            {   BOOL pswResult = [Pswarray containsObject:Password.stringValue];
                if (pswResult){
                    [NSApp stopModalWithCode:NO];
                    [login orderOut:nil];
                    [loadPicture orderOut:nil];
                    [mainWindow makeKeyAndOrderFront:nil];
                }
                else NSRunAlertPanel(@"Login", @"Incorrectly password,try again!", @"OK", nil, nil);
            }
            else NSRunAlertPanel(@"Login", @"Incorrectly username,try again!", @"OK", nil, nil);

    }
-(IBAction)btCancel:(id)sender{
    [NSApp stopModalWithCode:NO];
    [login orderOut:nil];
    [NSApp terminate:nil];
    
}
-(IBAction)btregister:(id)sender{
    [login orderOut:nil];
    [registerWin makeKeyAndOrderFront:nil];
    [registerWin center];

}
- (void)windowWillClose:(NSNotification *)notification
{
    [NSApp terminate:nil];
}

@end

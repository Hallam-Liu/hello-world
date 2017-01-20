//
//  Register.h
//  Russian
//
//  Created by macbook on 17/1/11.
//  Copyright © 2017年 macbook. All rights reserved.
//
#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import "AppDelegate.h"
@interface Register : NSObject{
 //   AppDelegate *registerWin;
    IBOutlet NSTextField *name;
    IBOutlet NSTextField *number;
    IBOutlet NSTextField *height;
    IBOutlet NSTextField *weight;
    IBOutlet NSTextField *tele;
    IBOutlet NSTextField *district;
}
-(void)initWithregister;
@end

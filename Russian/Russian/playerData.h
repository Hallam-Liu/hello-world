//
//  playerData.h
//  Russian
//
//  Created by macbook on 17/1/11.
//  Copyright © 2017年 macbook. All rights reserved.

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>
#import "AppDelegate.h"
@interface playerData : NSObject
{
    int number,age,attack,defence,shot,speed,ball_control;
    NSString *district,*telephone,*height,*weigth,*name;
    
}
-(void)initwithplayer;

@end

//
//  EZLayoutAdopt.m
//  EZLayout
//
//  Created by InfyMacBook on 31/03/15.
//  Copyright (c) 2015 change. All rights reserved.
//

#import "EZLayoutAdjust.h"
#import "EZLayoutConstants.h"

struct _EZ_DEVICE {
    EZ_DEVICE_TYPE type;
    CGFloat width;
    CGFloat height;
};
typedef struct _EZ_DEVICE EZ_DEVICE;

static double xScale = 1.0;
static double yScale = 1.0;

@implementation EZLayoutAdjust

+ (void)configScaleWithDeviceType:(EZ_DEVICE_TYPE)type {
    CGRect rectScreen = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = rectScreen.size.width;
    CGFloat screenHeight = rectScreen.size.height;

    switch (type) {
        case iPhone_4_4s:
            xScale = screenWidth / iPhone_4_4s_Width;
            yScale = screenHeight / iPhone_4_4s_Height;
            
            break;
        case iPhone_5_5s:
            xScale = screenWidth / iPhone_5_5s_Width;
            yScale = screenHeight / iPhone_5_5s_Height;
            
            break;
        case iPhone_6:
            xScale = screenWidth / iPhone_6_Width;
            yScale = screenHeight / iPhone_6_Height;
            
            break;
        case iPhone_6_plus:
            xScale = screenWidth / iPhone_6Plus_Width;
            yScale = screenHeight / iPhone_6Plus_Height;
            
        default:
            xScale = 1.0;
            yScale = 1.0;
            
            break;
    }
}

+ (void)adjustSubviews:(UIView *)view withScale:(BOOL)flag {
    for (UIView *subview in view.subviews) {
        CGRect frame = subview.frame;
        
        CGFloat x = frame.origin.x * xScale;
        CGFloat y = frame.origin.y * yScale;
        
        CGFloat width = frame.size.width;
        CGFloat height = frame.size.height;
        if (flag) {
            width *= xScale;
            height *= yScale;
        }
        
        subview.frame = CGRectMake(x, y, width, height);
    }
}

+ (void)adjustView:(UIView *)view withScale:(BOOL)flag {
    CGRect frame = view.frame;
    
    CGFloat x = frame.origin.x * xScale;
    CGFloat y = frame.origin.y * yScale;
    
    CGFloat width = frame.size.width;
    CGFloat height = frame.size.height;
    if (flag) {
        width *= xScale;
        height *= yScale;
    }
    
    view.frame = CGRectMake(x, y, width, height);
}


@end


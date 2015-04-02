//
//  EZLayoutAdopt.h
//  EZLayout
//
//  Created by InfyMacBook on 31/03/15.
//  Copyright (c) 2015 change. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "EZLayoutTypes.h"


@interface EZLayoutAdjust : NSObject

/**
 *  Config the scale
 *
 *  @param type UI design base on device
 */
+ (void)configScaleWithDeviceType:(EZ_DEVICE_TYPE)type;
/**
 *  Adjust subviews frame
 *
 *  @param view parent view
 *  @param flag width/height scale flag
 */
+ (void)adjustSubviews:(UIView *)view withScale:(BOOL)flag;
/**
 *  Adjust view frame
 *
 *  @param view need to adjust view
 *  @param flag width/height scale flag
 */
+ (void)adjustView:(UIView *)view withScale:(BOOL)flag;

@end

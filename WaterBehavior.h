//
//  WaterBehavior.h
//  UIKitDynamics
//
//  Created by Wesley Hovanec on 5/1/15.
//  Copyright (c) 2015 Wesley Hovanec. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WaterBehavior : UIPushBehavior

@property (nonatomic) NSInteger waterHeight;

-(instancetype)initWithItems:(NSArray *)items waterHeight:(NSInteger)height physicsAdjustment:(double)adjustment;

@end

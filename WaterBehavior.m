//
//  WaterBehavior.m
//  UIKitDynamics
//
//  Created by Wesley Hovanec on 5/1/15.
//  Copyright (c) 2015 Wesley Hovanec. All rights reserved.
//

#import "WaterBehavior.h"

@implementation WaterBehavior

-(instancetype)initWithItems:(NSArray *)items waterHeight:(NSInteger)height physicsAdjustment:(double)adjustment {
    self = [super initWithItems:items mode:UIPushBehaviorModeContinuous];
    if (self) {
        self.waterHeight = height;
        self.pushDirection = CGVectorMake(0.0, (-1.0 * adjustment));
        WaterBehavior __block *blockSelf = self;
        self.action = ^{
            UIView *item = blockSelf.items.firstObject;
            if (item.center.y < self.waterHeight) {
                blockSelf.magnitude = 0.0;
            }
            else {
                blockSelf.magnitude = 8.0 * pow(adjustment, 1.5);
            }
        };
    }
    return self;
}

@end

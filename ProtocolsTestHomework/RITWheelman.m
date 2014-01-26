//
//  RITWheelman.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 29.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITWheelman.h"

@implementation RITWheelman

- (void) moved {
    NSLog(@"Wheelman \"%@\" is moved!", self.name);
}

#pragma mark - RITRunners

- (void) run {
    NSLog(@"Wheelman \"%@\" is ran!", self.name);
}

+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITWheelman* runner = [[RITWheelman alloc] init];
    runner.runnerName = name;
    runner.runnerSpeed = speed;
    return runner;
}

@end

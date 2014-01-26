//
//  RITRunner.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 29.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITRunner.h"

@implementation RITRunner

- (void) moved {
    NSLog(@"Runner \"%@\" is moved!", self.name);
}

#pragma mark - RITRunners

- (void) run {
    NSLog(@"Runner \"%@\" is ran!", self.name);
}

+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITRunner* runner = [[RITRunner alloc] init];
    runner.runnerName = name;
    runner.runnerSpeed = speed;
    return runner;
}

@end

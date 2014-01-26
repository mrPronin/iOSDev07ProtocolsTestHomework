//
//  RITHorse.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITHorse.h"

@implementation RITHorse

- (void) moved {
    NSLog(@"Horse \"%@\" is moved!", self.nickname);
}

#pragma mark - RITRunners

- (void) run {
    NSLog(@"Horse \"%@\" is moved!", self.nickname);
}

+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITHorse* runner = [[RITHorse alloc] init];
    runner.runnerName = name;
    runner.runnerSpeed = speed;
    return runner;
}

@end

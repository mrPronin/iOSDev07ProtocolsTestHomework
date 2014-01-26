//
//  RITStudent.m
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITStudent.h"

@implementation RITStudent

#pragma mark - RITJumpers

- (void) jump {
    NSLog(@"Student \"%@\" is jumped!", self.name);
}

+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height {
    RITStudent* jumper = [[RITStudent alloc] init];
    jumper.jumperName = name;
    jumper.jumperType = type;
    jumper.maximumJumpHeight = height;
    return jumper;
}

#pragma mark - RITRunners

- (void) run {
    NSLog(@"Student \"%@\" is ran!", self.name);
}

+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITStudent* runner = [[RITStudent alloc] init];
    runner.runnerName = name;
    runner.runnerSpeed = speed;
    return runner;
}

#pragma mark - RITSwimmers

- (void) swim {
    NSLog(@"Student \"%@\" is swam!", self.name);
}

+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITStudent* swimmer = [[RITStudent alloc] init];
    swimmer.swimmerName = name;
    swimmer.swimmerSpeed = speed;
    return swimmer;
}

@end

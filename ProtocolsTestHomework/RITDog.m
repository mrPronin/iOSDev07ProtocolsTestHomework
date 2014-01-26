//
//  RITDog.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITDog.h"

@implementation RITDog

- (void) moved {
    NSLog(@"Dog \"%@\" is moved!", self.nickname);
}

#pragma mark - RITSwimmers

- (void) swim {
    NSLog(@"Dog \"%@\" is swam!", self.nickname);
}

+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITDog* swimmer = [[RITDog alloc] init];
    swimmer.swimmerName = name;
    swimmer.swimmerSpeed = speed;
    return swimmer;
}

@end

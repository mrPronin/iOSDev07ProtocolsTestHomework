//
//  RITSwimmer.m
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 29.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITSwimmer.h"

@implementation RITSwimmer

- (void) moved {
    NSLog(@"Swimmer \"%@\" is moved!", self.name);
}

#pragma mark - RITSwimmers

- (void) swim {
    NSLog(@"Swimmer \"%@\" is swam!", self.name);
}

+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed {
    RITSwimmer* swimmer = [[RITSwimmer alloc] init];
    swimmer.swimmerName = name;
    swimmer.swimmerSpeed = speed;
    return swimmer;
}

@end

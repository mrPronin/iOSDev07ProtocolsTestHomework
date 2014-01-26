//
//  RITRunner.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 29.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITHuman.h"
#import "RITRunners.h"

@interface RITRunner : RITHuman <RITRunners>

#pragma mark - RITRunners

@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) CGFloat runnerSpeed;

- (void) run;
+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@end

//
//  RITHorse.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAnimal.h"
#import "RITRunners.h"

@interface RITHorse : RITAnimal <RITRunners>

#pragma mark - RITRunners

@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) CGFloat runnerSpeed;

- (void) run;
+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@end

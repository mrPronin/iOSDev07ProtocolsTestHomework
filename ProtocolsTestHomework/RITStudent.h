//
//  RITStudent.h
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITHuman.h"
#import "RITJumpers.h"
#import "RITSwimmers.h"
#import "RITRunners.h"

@interface RITStudent : RITHuman <RITJumpers, RITSwimmers, RITRunners>

#pragma mark - RITJumpers

@property (strong, nonatomic) NSString* jumperName;
@property (strong, nonatomic) NSString* swimmerName;
@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) CGFloat maximumJumpHeight;
@property (assign, nonatomic) RITJumperType jumperType;

- (void) jump;
+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height;

#pragma mark - RITSwimmers

@property (assign, nonatomic) CGFloat swimmerSpeed;

- (void) swim;

#pragma mark - RITRunners

@property (assign, nonatomic) CGFloat runnerSpeed;

- (void) run;
+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@end

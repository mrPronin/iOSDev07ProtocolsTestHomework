//
//  RITRunners.h
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RITRunners <NSObject>

@required

@property (strong, nonatomic) NSString* runnerName;
@property (assign, nonatomic) CGFloat runnerSpeed;

- (void) run;
+ (id) runnerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@optional

- (void) race;

@end

//
//  RITNextGeneration.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITHuman.h"
#import "RITJumpers.h"

@interface RITNextGeneration : RITHuman <RITJumpers>

@property (assign, nonatomic) BOOL isLevitation;
@property (assign, nonatomic) BOOL isTeleportation;
@property (strong, nonatomic) NSString* secretCode;

#pragma mark - RITJumpers

@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) CGFloat maximumJumpHeight;
@property (assign, nonatomic) RITJumperType jumperType;

- (void) jump;
+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height;

@end

//
//  RITSwimmer.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 29.12.13.
//  Copyright (c) 2013 Pronin Alexander. All rights reserved.
//

#import "RITHuman.h"
#import "RITSwimmers.h"

@interface RITSwimmer : RITHuman <RITSwimmers>

#pragma mark - RITSwimmers

@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) CGFloat swimmerSpeed;

- (void) swim;
+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@end

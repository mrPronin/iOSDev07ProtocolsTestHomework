//
//  RITDog.h
//  ArraysTestHomework
//
//  Created by Pronin Alexander on 01.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAnimal.h"
#import "RITSwimmers.h"

@interface RITDog : RITAnimal <RITSwimmers>

#pragma mark - RITSwimmers

@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) CGFloat swimmerSpeed;

- (void) swim;
+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@end

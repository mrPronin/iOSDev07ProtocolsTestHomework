//
//  RITSwimmers.h
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RITSwimmers <NSObject>


@required

@property (strong, nonatomic) NSString* swimmerName;
@property (assign, nonatomic) CGFloat swimmerSpeed;

- (void) swim;
+ (id) swimmerWithName: (NSString*) name andSpeed: (CGFloat) speed;

@optional

@property (assign, nonatomic) NSInteger swimmerAge;

- (void) dive;

@end

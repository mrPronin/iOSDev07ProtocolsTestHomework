//
//  RITJumpers.h
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    RITJumperTypePoleVaulting,
    RITJumperTypeOther
    } RITJumperType;

@protocol RITJumpers <NSObject>

@required

@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) CGFloat maximumJumpHeight;
@property (assign, nonatomic) RITJumperType jumperType;

- (void) jump;
+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height;

@optional

@property (assign, nonatomic) NSInteger rating;

- (void) jumpWithHurdle;

@end


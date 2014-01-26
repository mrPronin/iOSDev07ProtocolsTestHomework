//
//  RITKangaroo.h
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAnimal.h"
#import "RITJumpers.h"

@interface RITKangaroo : RITAnimal <RITJumpers>

#pragma mark - RITJumpers

@property (strong, nonatomic) NSString* jumperName;
@property (assign, nonatomic) CGFloat maximumJumpHeight;
@property (assign, nonatomic) RITJumperType jumperType;

- (void) jump;
+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height;

@end

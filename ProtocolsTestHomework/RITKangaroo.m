//
//  RITKangaroo.m
//  ProtocolsTestHomework
//
//  Created by Aleksandr Pronin on 26.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITKangaroo.h"

@implementation RITKangaroo

#pragma mark - RITJumpers

- (void) jump {
    NSLog(@"Kangaroo \"%@\" is jumped!", self.nickname);
}

+ (id) jumperWithName: (NSString*) name andType: (RITJumperType) type andHeight: (CGFloat) height {
    RITKangaroo* jumper = [[RITKangaroo alloc] init];
    jumper.jumperName = name;
    jumper.jumperType = type;
    jumper.maximumJumpHeight = height;
    return jumper;
}

@end

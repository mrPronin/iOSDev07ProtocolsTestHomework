//
//  RITAppDelegate.m
//  ProtocolsTestHomework
//
//  Created by Pronin Alexander on 20.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITHuman.h"
#import "RITWheelman.h"
#import "RITSwimmer.h"
#import "RITRunner.h"
#import "RITNextGeneration.h"
#import "RITStudent.h"
#import "RITAnimal.h"
#import "RITKangaroo.h"
#import "RITDog.h"
#import "RITHorse.h"
#import "RITPlatypus.h"
#import "RITJumpers.h"
#import "RITSwimmers.h"
#import "RITRunners.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
#pragma mark - Create and initialize objects
    
    RITHuman*           human       = [[RITHuman alloc] init];
    RITRunner*          runner      = [RITRunner runnerWithName:@"Runner" andSpeed:12.8f];
    RITSwimmer*         swimmer     = [RITSwimmer swimmerWithName:@"Swimmer" andSpeed:7.f];
    RITWheelman*        wheelman    = [RITWheelman runnerWithName:@"Whellman" andSpeed:40.f];
    RITNextGeneration*  superman    = [RITNextGeneration jumperWithName:@"Superman" andType:RITJumperTypeOther andHeight:3.2f];
    RITStudent*         student     = [[RITStudent alloc] init];
    
    human.name      = @"Human 01";
    runner.name     = @"Runner 01";
    swimmer.name    = @"Swimmer 01";
    wheelman.name   = @"Wheelman 01";
    superman.name   = @"Super man 01";
    student.name    = @"Student";
    
    human.height        = 1.7f;
    runner.height       = 1.95f;
    swimmer.height      = 1.9f;
    wheelman.height     = 1.85f;
    superman.height     = 2.10f;
    student.height      = 1.66f;
    
    human.weight        = 55.f;
    runner.weight       = 64.f;
    swimmer.weight      = 62.f;
    wheelman.weight     = 60.f;
    superman.weight     = 89.f;
    student.weight      = 49.f;
    
    human.gender        = RITGenderMale;
    runner.gender       = RITGenderFemale;
    swimmer.gender      = RITGenderFemale;
    wheelman.gender     = RITGenderMale;
    superman.gender     = RITGenderMale;
    student.gender      = RITGenderFemale;
    
    superman.isLevitation = YES;
    
    
    RITAnimal*          animal      = [[RITAnimal alloc] init];
    RITKangaroo*        kangaroo    = [RITKangaroo jumperWithName:@"Jamping Kangaroo" andType:RITJumperTypeOther andHeight:1.88f];
    RITDog*             dog         = [RITDog swimmerWithName:@"Swimming Dog" andSpeed:0.5f];
    RITHorse*           horse       = [RITHorse runnerWithName:@"Running Horse" andSpeed:34.f];
    RITPlatypus*        platypus    = [[RITPlatypus alloc] init];
    
    animal.nickname     = @"Simple Animal";
    kangaroo.nickname   = @"Kangaroo";
    dog.nickname        = @"Dog's 01";
    horse.nickname      = @"Horse 01";
    platypus.nickname   = @"Slacker Platypus";
    
    animal.isPet    = NO;
    kangaroo.isPet  = NO;
    dog.isPet       = YES;
    horse.isPet     = NO;
    platypus.isPet  = NO;
    
#pragma mark - Array processing
    
    NSArray*            creatures   = @[human, runner, swimmer, wheelman, superman, student, animal, kangaroo, dog, horse, platypus];
    
    int           i = 0;
    
    for (id creature in creatures) {
        
        NSLog(@"Index = %d", i);
        NSLog(@"%@", creature);
        
        if (!(
              [creature conformsToProtocol:@protocol(RITJumpers)] ||
              [creature conformsToProtocol:@protocol(RITSwimmers)] ||
              [creature conformsToProtocol:@protocol(RITRunners)]
              )) {
            NSLog(@"Slacker Creature!!!");
        } else {
            if ([creature conformsToProtocol:@protocol(RITJumpers)]) {
                id <RITJumpers> jumper = creature;
                [jumper jump];
            }
            if ([creature conformsToProtocol:@protocol(RITSwimmers)]) {
                id <RITSwimmers> swimmer = creature;
                [swimmer swim];
            }
            if ([creature conformsToProtocol:@protocol(RITRunners)]) {
                id <RITRunners> runner = creature;
                [runner run];
            }
        }
        NSLog(@"\n");
        i++;
    }
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end

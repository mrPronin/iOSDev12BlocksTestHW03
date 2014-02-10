//
//  RITAppDelegate.m
//  12BlocksTestHW03
//
//  Created by Aleksandr Pronin on 10.02.14.
//  Copyright (c) 2014 Aleksandr Pronin. All rights reserved.
//

#import "RITAppDelegate.h"
#import "RITPatient.h"

@implementation RITAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    
    RITPatient* patient1    = [[RITPatient alloc] init];
    patient1.name           = @"Vova";
    patient1.temperature    = 36.5f;
    
    RITPatient* patient2    = [[RITPatient alloc] init];
    patient2.name           = @"Petya";
    patient2.temperature    = 40.2f;
    
    RITPatient* patient3    = [[RITPatient alloc] init];
    patient3.name           = @"Dima";
    patient3.temperature    = 37.1f;
    
    RITPatient* patient4    = [[RITPatient alloc] init];
    patient4.name           = @"Sasha";
    patient4.temperature    = 38.f;
    
    NSArray*    patients    = @[patient1, patient2, patient3, patient4];
    
    void (^doctorBlock)(RITPatient*) = ^(RITPatient* patient) {
        
        NSLog(@"Patient %@ feels bad", patient.name);
        
        if (patient.temperature >=  37.f && patient.temperature <= 39.f) {
            [patient takePill];
        } else if (patient.temperature > 39.f) {
            [patient makeShot];
        } else {
            NSLog(@"Patient %@ should rest", patient.name);
        }
        NSLog(@"\n");
    };
    
    
    for (RITPatient* patient in patients) {
        [patient iFeelsBad:doctorBlock];
    }
    
    
    
    
    //[patients makeObjectsPerformSelector:@selector(iFeelsBad: doctorBlock)];
    
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

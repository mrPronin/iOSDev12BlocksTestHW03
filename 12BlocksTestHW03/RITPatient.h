//
//  RITPatient.h
//  DelegatesTest
//
//  Created by Pronin Alexander on 29.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol RITPatientDelegate;

@interface RITPatient : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat   temperature;

- (void) takePill;
- (void) makeShot;
- (void) iFeelsBad: (void(^)(RITPatient*)) block;

@end
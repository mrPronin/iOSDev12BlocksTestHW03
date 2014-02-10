//
//  RITPatient.m
//  DelegatesTest
//
//  Created by Pronin Alexander on 29.01.14.
//  Copyright (c) 2014 Pronin Alexander. All rights reserved.
//

#import "RITPatient.h"

@implementation RITPatient

- (void) takePill {
    NSLog(@"%@ takes a pill", self.name);
}
- (void) makeShot {
    NSLog(@"%@ makes a shot", self.name);
}

- (void) iFeelsBad: (void(^)(RITPatient*)) block {
    
    __weak RITPatient*  patient = self;
    block(patient);
}

@end

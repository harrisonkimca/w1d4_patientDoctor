//
//  Patient.h
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Doctor;

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) int healthCard;
@property (strong, nonatomic) NSMutableSet *symptoms;

- (instancetype) initWithName:(NSString*)patientName andAge:(int)patientAge andHealthCare:(int)healthCard andSymptoms:(NSMutableSet*)patientSymptoms;
- (void) visitDoctor:(Doctor*)doctor;

@end

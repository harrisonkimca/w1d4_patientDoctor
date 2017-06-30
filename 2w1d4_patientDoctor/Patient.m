//
//  Patient.m
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Patient.h"
#import "Doctor.h"

@implementation Patient

- (instancetype)initWithName:(NSString *)patientName andAge:(int)patientAge andHealthCare:(int)healthCard andSymptoms:(NSMutableSet *)patientSymptoms
{
    self = [super init];
    if (self) {
        _name = patientName;
        _age = patientAge;
        _healthCard = healthCard;
        _symptoms = patientSymptoms;
    }
    return self;
}

- (void) visitDoctor:(Doctor*)doctor
{
    NSLog(@"%@ visits Dr. %@, who specializes in %@", self.name, doctor.name, doctor.specialization);
}

// Did not use but remember how to do this
//- (NSString *)description // for set
//{
//    NSArray *symptoms = [self.symptoms allObjects];
//    return [NSString stringWithFormat:@"%@", symptoms];
//}


@end

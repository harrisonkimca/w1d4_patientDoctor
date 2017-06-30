//
//  Prescription.m
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Prescription.h"
#import "Patient.h"

@implementation Prescription

- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptions = [[NSMutableDictionary alloc]init];
        
        [_prescriptions setObject:@"blue pill" forKey:@"cough"];
        [_prescriptions setObject:@"red pill" forKey:@"sore throat"];
        [_prescriptions setObject:@"green pill" forKey:@"sneezing"];
        [_prescriptions setObject:@"pink pill" forKey:@"congestion"];
        [_prescriptions setObject:@"yellow pill" forKey:@"headache"];
    }
    return self;
}

- (NSMutableDictionary*)choosePrescription:(Patient *)patient
{
    NSMutableDictionary *prescription = [[NSMutableDictionary alloc]init];
    if (patient)
    {
        for (NSString *symptom in patient.symptoms)
        {
            NSString *diagnosis = [_prescriptions objectForKey:symptom];
            if (diagnosis)
            {
                [prescription setObject:diagnosis forKey:symptom];
            }
        }
    }
    return prescription;
}

@end

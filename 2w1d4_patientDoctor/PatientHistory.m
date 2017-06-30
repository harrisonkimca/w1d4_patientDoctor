//
//  PatientHistory.m
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "PatientHistory.h"
#import "Patient.h"

@implementation PatientHistory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _patientHistory = [[NSMutableDictionary alloc]init];
    }
    return self;
}

- (void) addPatient:(Patient*)patient withPrescription:(NSMutableDictionary*)prescription
{
    if(patient)
    {
        [_patientHistory setObject:prescription forKey:patient.name];
    }
}

@end

//
//  Doctor.m
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
#import "Prescription.h"

@implementation Doctor

- (instancetype)initWithName:(NSString *)doctorName andSpecialization:(NSString *)doctorSpecialty
{
    self = [super init];
    if (self) {
        _name = doctorName;
        _specialization = doctorSpecialty;
        _acceptPatients = [[NSMutableArray alloc]init];
    }
    return self;
}

- (BOOL)acceptPatient:(Patient*)patient
{
    BOOL isAccepted = NO;
    if(patient.healthCard)
    {
        [self.acceptPatients addObject:patient];
        isAccepted = YES;
    }
    return isAccepted;
}

- (BOOL)requestMedication:(Patient*)patient
{
    BOOL approvePrescription = NO;
    for(Patient *acceptPatient in self.acceptPatients)
    {
        if ([acceptPatient isEqual:patient])
        {
            NSLog(@"Patient is accepted patient\n");
            approvePrescription = YES;
        }
    }
    return approvePrescription;
}

- (NSMutableDictionary*)givePrescription:(Patient *)patient
{
    NSMutableDictionary *patientPrescription;
    Prescription *writePrescription = [[Prescription alloc]init];
    if (patient)
    {
        patientPrescription = [writePrescription choosePrescription:patient];
    }
    return patientPrescription;
}

// Did not use but remember how to use this
//- (NSString *)description //for array
//{
//    NSString *name = [self.acceptPatients valueForKey:@"name"];
//    return [NSString stringWithFormat:@"%@\n", name];
//}




@end

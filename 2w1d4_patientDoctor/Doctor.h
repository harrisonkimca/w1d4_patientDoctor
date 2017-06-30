//
//  Doctor.h
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Doctor : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *specialization;
@property (strong, nonatomic) NSMutableArray *acceptPatients;

- (instancetype)initWithName:(NSString*)doctorName andSpecialization:(NSString*)doctorSpecialty;
- (BOOL)acceptPatient:(Patient*)patient;
- (BOOL)requestMedication:(Patient*)patient;
- (NSMutableDictionary*)givePrescription:(Patient*)patient;

@end

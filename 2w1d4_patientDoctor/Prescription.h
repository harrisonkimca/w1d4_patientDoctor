//
//  Prescription.h
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Patient;

@interface Prescription : NSObject

@property (strong, nonatomic) NSMutableDictionary *prescriptions;

- (NSMutableDictionary*)choosePrescription:(Patient*)patient;

@end

//
//  main.m
//  2w1d4_patientDoctor
//
//  Created by Seantastic31 on 29/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Doctor.h"
#import "PatientHistory.h"
#import "Prescription.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        PatientHistory *patientHistory = [[PatientHistory alloc]init];
        
        
        // Task 1: set up & general info
        Patient *patient1 = [[Patient alloc]initWithName:@"Star Lord"
                                                  andAge:32
                                           andHealthCare:36492
                                             andSymptoms:[NSMutableSet setWithObjects:@"cough", @"sneezing", nil]];
        
        
        Patient *patient2 = [[Patient alloc]initWithName:@"Zamora"
                                                  andAge:28
                                           andHealthCare:46584
                                             andSymptoms:[NSMutableSet setWithObjects:@"headache", @"congestion", nil]];
        
        Patient *patient3 = [[Patient alloc]initWithName:@"Drax"
                                                  andAge:38
                                           andHealthCare:52130
                                             andSymptoms:[NSMutableSet setWithObjects:@"sore throat", @"cough", nil]];
        
        Doctor *doctor1 = [[Doctor alloc]initWithName:@"Rocket"
                                    andSpecialization:@"Pediatrics"];
    
        Doctor *doctor2 = [[Doctor alloc]initWithName:@"Groot"
                                    andSpecialization:@"Proctology"];
        
        // DOCTOR 1 & PATIENT 1
        // Task 2: patient asks doctor name & specialization
        [patient1 visitDoctor:doctor1];
        
        // Task 2: doctor accepts patient
        if ([doctor1 acceptPatient:patient1])
        {
            NSLog(@"Dr. %@ accepts %@ as a patient", doctor1.name, patient1.name);
        }
        else
        {
            NSLog(@"Sorry but the patient cannot be accepted");
        }
        
        // Task 2: doctor keeps track of all patients (print array)
        NSLog(@"Dr. %@'s accepted patients are:\n", doctor1.name);
        // ***** to drill down to property of object in the array need extra step *****
        for (NSString *name in [doctor1.acceptPatients valueForKey:@"name"])
        {
            NSLog(@"%@\n", name);
        }
        
        // Task 3: patient requests medication
        NSLog(@"%@ asks Dr. %@ for medication", patient1.name, doctor1.name);
        if ([doctor1 requestMedication:patient1])
        {
            NSLog(@"Since patient is accepted patient medication can be prescribed");
            
            NSLog(@"%@'s symptoms are:\n", patient1.name);
            for (NSString *symptoms in patient1.symptoms)
            {
                NSLog(@"%@\n", symptoms);
            }
            // Task 3: doctor accepts symptoms & prescribes medication
            NSLog(@"Dr. %@ prescribes the following medications to %@:\n", doctor1.name, patient1.name);
            NSMutableDictionary *meds = [doctor1 givePrescription:patient1];
            for (NSString *pill in [meds allKeys])
            {
                NSLog(@"%@ -> %@", pill, [meds objectForKey:pill]);
            }
            
            // Task 4: add to patient history
            [patientHistory addPatient:patient1 withPrescription:meds];
            
        }
        else
        {
            NSLog(@"Sorry cannot prescribe medication");
        }
        
        // Task 4: 'database' for patient history
        NSLog(@"Patient history for all patients:\n");
        for (NSString *patient in [patientHistory.patientHistory allKeys])
        {
            NSLog(@"%@ -> %@ ", patient, [patientHistory.patientHistory objectForKey:patient]);
        }
        
// ***************************************
        
        // DOCTOR 1 & PATIENT 2
        [patient2 visitDoctor:doctor1];
        
        if ([doctor1 acceptPatient:patient2])
        {
            NSLog(@"Dr. %@ accepts %@ as a patient", doctor1.name, patient2.name);
        }
        else
        {
            NSLog(@"Sorry but the patient cannot be accepted");
        }
        
        NSLog(@"Dr. %@'s accepted patients are:\n", doctor1.name);
        for (NSString *name in [doctor1.acceptPatients valueForKey:@"name"])
        {
            NSLog(@"%@\n", name);
        }
        
        NSLog(@"%@ asks Dr. %@ for medication", patient2.name, doctor1.name);
        if ([doctor1 requestMedication:patient2])
        {
            NSLog(@"Since patient is accepted patient medication can be prescribed");
            
            NSLog(@"%@'s symptoms are:\n", patient2.name);
            for (NSString *symptoms in patient2.symptoms)
            {
                NSLog(@"%@\n", symptoms);
            }
            NSLog(@"Dr. %@ prescribes the following medications to %@:\n", doctor1.name, patient2.name);
            NSMutableDictionary *meds = [doctor1 givePrescription:patient2];
            for (NSString *pill in [meds allKeys])
            {
                NSLog(@"%@ -> %@", pill, [meds objectForKey:pill]);
            }
            
            [patientHistory addPatient:patient2 withPrescription:meds];
        }
        else
        {
            NSLog(@"Sorry cannot prescribe medication");
        }
        
        NSLog(@"Patient history for all patients:\n");
        for (NSString *patient in [patientHistory.patientHistory allKeys])
        {
            NSLog(@"%@ -> %@ ", patient, [patientHistory.patientHistory objectForKey:patient]);
        }
        
        // ***************************************
        
        // DOCTOR 2 & PATIENT 2
        [patient2 visitDoctor:doctor2];
        
        if ([doctor2 acceptPatient:patient2])
        {
            NSLog(@"Dr. %@ accepts %@ as a patient", doctor2.name, patient2.name);
        }
        else
        {
            NSLog(@"Sorry but the patient cannot be accepted");
        }
        
        NSLog(@"Dr. %@'s accepted patients are:\n", doctor2.name);
        for (NSString *name in [doctor2.acceptPatients valueForKey:@"name"])
        {
            NSLog(@"%@\n", name);
        }
        
        NSLog(@"%@ asks Dr. %@ for medication", patient2.name, doctor2.name);
        if ([doctor2 requestMedication:patient2])
        {
            NSLog(@"Since patient is accepted patient medication can be prescribed");
            
            NSLog(@"%@'s symptoms are:\n", patient2.name);
            for (NSString *symptoms in patient2.symptoms)
            {
                NSLog(@"%@\n", symptoms);
            }
            NSLog(@"Dr. %@ prescribes the following medications to %@:\n", doctor2.name, patient2.name);
            NSMutableDictionary *meds = [doctor2 givePrescription:patient2];
            for (NSString *pill in [meds allKeys])
            {
                NSLog(@"%@ -> %@", pill, [meds objectForKey:pill]);
            }
            
            [patientHistory addPatient:patient2 withPrescription:meds];
        }
        else
        {
            NSLog(@"Sorry cannot prescribe medication");
        }
        
        NSLog(@"Patient history for all patients:\n");
        for (NSString *patient in [patientHistory.patientHistory allKeys])
        {
            NSLog(@"%@ -> %@ ", patient, [patientHistory.patientHistory objectForKey:patient]);
        }
        
        // ***************************************
        
        // DOCTOR 2 & PATIENT 3
        [patient3 visitDoctor:doctor2];
        
        if ([doctor2 acceptPatient:patient3])
        {
            NSLog(@"Dr. %@ accepts %@ as a patient", doctor2.name, patient3.name);
        }
        else
        {
            NSLog(@"Sorry but the patient cannot be accepted");
        }
        
        NSLog(@"Dr. %@'s accepted patients are:\n", doctor2.name);
        for (NSString *name in [doctor2.acceptPatients valueForKey:@"name"])
        {
            NSLog(@"%@\n", name);
        }
        
        NSLog(@"%@ asks Dr. %@ for medication", patient3.name, doctor2.name);
        if ([doctor2 requestMedication:patient3])
        {
            NSLog(@"Since patient is accepted patient medication can be prescribed");
            
            NSLog(@"%@'s symptoms are:\n", patient3.name);
            for (NSString *symptoms in patient3.symptoms)
            {
                NSLog(@"%@\n", symptoms);
            }
            NSLog(@"Dr. %@ prescribes the following medications to %@:\n", doctor2.name, patient3.name);
            NSMutableDictionary *meds = [doctor2 givePrescription:patient3];
            for (NSString *pill in [meds allKeys])
            {
                NSLog(@"%@ -> %@", pill, [meds objectForKey:pill]);
            }
            
            [patientHistory addPatient:patient3 withPrescription:meds];
        }
        else
        {
            NSLog(@"Sorry cannot prescribe medication");
        }
        
        NSLog(@"Patient history for all patients:\n");
        for (NSString *patient in [patientHistory.patientHistory allKeys])
        {
            NSLog(@"%@ -> %@ ", patient, [patientHistory.patientHistory objectForKey:patient]);
        }


    }
    
    return 0;
}

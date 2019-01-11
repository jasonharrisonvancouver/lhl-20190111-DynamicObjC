//
//  main.m
//  Friday
//
//  Created by Roland on 2019-01-11.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "Person.h"
#import "Father.h"
#import "Robot.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *aPerson = [[Person alloc] init];
        Student *aStudent = [[Student alloc] init];
        
        if ([aPerson isKindOfClass:[Person class]]) {
            NSLog(@"aPerson is a kind of Person");
        }
        if ([aStudent isKindOfClass:[Person class]]) {
            NSLog(@"aStudent is a kind of Person");
        }
        if ([aPerson isKindOfClass:[Student class]]) {
            NSLog(@"aPerson is a kind of Student");
        }
        if ([aStudent isKindOfClass:[Student class]]) {
            NSLog(@"aStudent is a kind of Student");
        }
        if ([aStudent isMemberOfClass:[Student class]]) {
            NSLog(@"aStudent is a member of Student");
        }
        if ([aStudent isMemberOfClass:[Person class]]) {
            NSLog(@"aStudent is a member of Person");
        }
        
        Person *anIncognitoStudent = [[Student alloc] init];
        if ([anIncognitoStudent isKindOfClass:[Person class]]) {
            NSLog(@"anIncognitoStudent is a kind of Person");
        }
        if ([anIncognitoStudent isKindOfClass:[Student class]]) {
            NSLog(@"anIncognitoStudent is a kind of Student");
        }
        if ([anIncognitoStudent isMemberOfClass:[Person class]]) {
            NSLog(@"anIncognitoStudent is a member of Person");
        }
        if ([anIncognitoStudent isMemberOfClass:[Student class]]) {
            NSLog(@"anIncognitoStudent is a member of Student");
        }
        
        id anUnknownObject = [[Student alloc] init];
        if ([anUnknownObject isKindOfClass:[Person class]]) {
            NSLog(@"anUnknownObject is a kind of Person");
        }
        if ([anUnknownObject isKindOfClass:[Student class]]) {
            NSLog(@"anUnknownObject is a kind of Student");
        }
        if ([anUnknownObject isKindOfClass:[NSArray class]]) {
            NSLog(@"anUnknownObject is a kind of NSArray");
        }
        if ([anUnknownObject isMemberOfClass:[Person class]]) {
            NSLog(@"anUnknownObject is a member of Person");
        }
        if ([anUnknownObject isMemberOfClass:[Student class]]) {
            NSLog(@"anUnknownObject is a member of Student");
        }
        
        
        id object = [[NSMutableArray alloc] init];
        SEL addSel = @selector(addObject:);
        
        if ([object respondsToSelector:addSel]) {
            [object performSelector:addSel
                         withObject:@"item"];
            // The above line executes this [object addObject:@”item”]
            NSLog(@"Executing addObject: on object");
        }

        id anotherObject = [[Student alloc] init];
        SEL learnSel = @selector(learn);
        
        if ([anotherObject respondsToSelector:learnSel]) {
            [anotherObject performSelector:learnSel];
            // The above line executes this [object learn]
            NSLog(@"Executing learn on anotherObject");
        }
        
        id aFather = [[Father alloc] init];
        if ([aFather respondsToSelector:@selector(teach)]) {
            [aFather performSelector:@selector(teach)];
            NSLog(@"Executing teach on aFather");
        }

        if ([aPerson conformsToProtocol:@protocol(Parent)] &&
            [aPerson respondsToSelector:@selector(teach)]) {
            [aPerson performSelector:@selector(teach)];
            NSLog(@"Executing teach on aPerson");
        }
        
        
        
        
        Teacher *aTeacher = [[Teacher alloc] init];  // This teacher has a slave
        aTeacher.slave = aStudent;   // This student has to earn his grades
        
        Teacher *anotherTeacher = [[Teacher alloc] init];  // This teacher has to do all his marking
        
        Teacher *advancedTeacher = [[Teacher alloc] init]; // This teacher has a robot marker
        Robot *aRobot = [[Robot alloc] init];
        advancedTeacher.slave = aRobot;
//        aTeacher.slave = aRobot;
        
        Teacher *fourthTeacher = [[Teacher alloc] init];
        if ([anotherObject conformsToProtocol:@protocol(Marker)]) {
            fourthTeacher.slave = anotherObject;
        }
        
        float x = 10.5;
//        NSNumber *aNumber = [NSNumber numberWithInteger:10];
        NSNumber *aNumber = @(10.7);
        aNumber = @(x);
    }
    return 0;
}

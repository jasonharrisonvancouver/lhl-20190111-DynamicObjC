//
//  Teacher.m
//  Friday
//
//  Created by Roland on 2019-01-11.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "Teacher.h"

@implementation Teacher

- (void)mark {
    
}

- (void)createReportCard {
    // I have to mark all the assignments before generating the report card
    if (self.slave != nil) {
        // I'm lucky to have a slave to do my marking
        [self.slave mark];
    }
    else {
        // Poor me... got to do the work myself
        [self mark];
    }
}

@end

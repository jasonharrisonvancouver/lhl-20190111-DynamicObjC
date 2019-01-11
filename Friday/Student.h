//
//  Student.h
//  Friday
//
//  Created by Roland on 2019-01-11.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "Person.h"
#import "Teacher.h"

NS_ASSUME_NONNULL_BEGIN

@interface Student : Person <Marker>

- (void)learn;

@end

NS_ASSUME_NONNULL_END

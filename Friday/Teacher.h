//
//  Teacher.h
//  Friday
//
//  Created by Roland on 2019-01-11.
//  Copyright © 2019 Game of Apps. All rights reserved.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Marker <NSObject>

- (void)mark;

@end


@interface Teacher : Person <Marker>

@property (strong, nonatomic) id<Marker> slave;

- (void)createReportCard;

@end

NS_ASSUME_NONNULL_END

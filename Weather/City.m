//
//  City.m
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "City.h"

@implementation City

- (instancetype)initWithName:(NSString *)name weatherDescription:(NSString *)weatherDescription currentTime:(NSString *)currentTime currentTemperature:(NSString *)currentTemperature andChanceOfPrecipitation:(NSString *)chanceOfPrecipitation {
    self = [super init];
    if (self) {
        
        _name = name;
        _weatherDescription = weatherDescription;
        _currentTemperature = currentTemperature;
        _currentTime = currentTime;
        _chanceOfPrecipitation = chanceOfPrecipitation;
    }
    return self;
    
}


@end

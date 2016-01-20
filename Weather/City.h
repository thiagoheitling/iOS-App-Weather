//
//  City.h
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, strong) NSString *weatherDescription;
@property(nonatomic, strong) NSString *currentTime;
@property(nonatomic, strong) NSString *currentTemperature;
@property(nonatomic, strong) NSString *chanceOfPrecipitation;


- (instancetype)initWithName:(NSString *)name weatherDescription:(NSString *)weatherDescription currentTime:(NSString *)currentTime currentTemperature:(NSString *)currentTemperature andChanceOfPrecipitation:(NSString *)chanceOfPrecipitation;

@end

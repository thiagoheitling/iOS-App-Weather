//
//  CityViewController.m
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "City.h"
#import "DetailedViewController.h"

@implementation CityViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if (self) {
        _city = city;
    }
    return self;
}

-(void)viewDidLoad{
    [super viewDidLoad];
    
}

//-(void)showWeatherDetails:()

@end

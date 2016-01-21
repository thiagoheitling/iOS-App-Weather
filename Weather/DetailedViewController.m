//
//  DetailedViewController.m
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DetailedViewController.h"

@interface DetailedViewController ()

@property (nonatomic, weak) UILabel *weatherDescription;
@property (nonatomic, weak) UILabel *currentTemperature;
@property (nonatomic, weak) UILabel *currentTime;
@property (nonatomic, weak) UILabel *chanceOfPrecipitation;

@end

@implementation DetailedViewController

-(void)viewDidLoad{
    
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *weatherDescription = [[UILabel alloc] initWithFrame:CGRectMake(120.0, 100.0, 200.0, 30.0)];
    weatherDescription.backgroundColor = [UIColor whiteColor];
    weatherDescription.text = self.city.weatherDescription;
    [self.view addSubview:weatherDescription];
    self.weatherDescription = weatherDescription;
 
    UILabel *currentTemperature = [[UILabel alloc] initWithFrame:CGRectMake(120.0, 150.0, 200.0, 30.0)];
    currentTemperature.backgroundColor = [UIColor whiteColor];
    currentTemperature.text = self.city.currentTemperature;
    [self.view addSubview:currentTemperature];
    self.currentTemperature = currentTemperature;

    UILabel *currentTime = [[UILabel alloc] initWithFrame:CGRectMake(120.0, 200.0, 200.0, 30.0)];
    currentTime.backgroundColor = [UIColor whiteColor];
    currentTime.text = self.city.currentTime;
    [self.view addSubview:currentTime];
    self.currentTime = currentTime;
    
    UILabel *chanceOfPrecipitation = [[UILabel alloc] initWithFrame:CGRectMake(120.0, 250.0, 200.0, 30.0)];
    chanceOfPrecipitation.backgroundColor = [UIColor whiteColor];
    chanceOfPrecipitation.text = self.city.chanceOfPrecipitation;
    [self.view addSubview:chanceOfPrecipitation];
    self.chanceOfPrecipitation = chanceOfPrecipitation;
}

@end

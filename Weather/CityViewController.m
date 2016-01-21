//
//  CityViewController.m
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "CityViewController.h"
#import "DetailedViewController.h"

@interface CityViewController ()

@property (nonatomic, weak) UILabel *weatherDescription;
@property (nonatomic, weak) UIImage *weatherImage;
@property (nonatomic, weak) UIButton *moreDetailsButton;
@property (strong, nonatomic) City *city;

@end


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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *weatherDescription = [[UILabel alloc] initWithFrame:CGRectMake(120.0, 100.0, 200.0, 30.0)];
    weatherDescription.backgroundColor = [UIColor whiteColor];
    weatherDescription.text = self.city.weatherDescription;
    [self.view addSubview:weatherDescription];
    self.weatherDescription = weatherDescription;
    
    UIImageView *weatherImage = [[UIImageView alloc] initWithFrame:CGRectZero];
    weatherImage.translatesAutoresizingMaskIntoConstraints = NO;
    weatherImage.backgroundColor = [UIColor lightGrayColor];
    weatherImage.image = self.city.weatherImage;
    [self.view addSubview:weatherImage];
    
    //adding constraints to weatherImage
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:weatherImage
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:weatherImage
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    // creating the moreDetailsButton
    
    UIButton *moreDetailsButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [moreDetailsButton setTitle:@"more details" forState:UIControlStateNormal];
    [moreDetailsButton addTarget:self action:@selector(showWeatherDetails) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:moreDetailsButton];
    moreDetailsButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.moreDetailsButton = moreDetailsButton;

    // add constraints to moreDetailsButton
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:moreDetailsButton
                                                          attribute:NSLayoutAttributeCenterX
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterX
                                                         multiplier:1.0
                                                           constant:0.0]];
    
    [self.view addConstraint:[NSLayoutConstraint constraintWithItem:moreDetailsButton
                                                          attribute:NSLayoutAttributeCenterY
                                                          relatedBy:NSLayoutRelationEqual
                                                             toItem:self.view
                                                          attribute:NSLayoutAttributeCenterY
                                                         multiplier:1.0
                                                           constant:100.0]];
    
}

-(void)showWeatherDetails {
    
    DetailedViewController *detailViewController = [[DetailedViewController alloc]init];
    [self.navigationController pushViewController:detailViewController animated:NO];
    detailViewController.city = self.city;
}


@end

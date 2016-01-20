//
//  CityViewController.h
//  Weather
//
//  Created by Thiago Heitling on 2016-01-20.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <UIKit/UIKit.h>
@class City;

@interface CityViewController : UIViewController

@property (strong, nonatomic) City *city;

- (instancetype)initWithCity:(City *)city;

@end

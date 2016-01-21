//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "CityViewController.h"

@implementation LHWAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *myTabBarController = [[UITabBarController alloc] init];    
    self.window.rootViewController = myTabBarController;
    
    City *vancouver = [[City alloc]initWithName:@"Vancouver" weatherDescription:@"Lots of rain" currentTime:@"11:02" currentTemperature:@"25 C" chanceOfPrecipitation:@"30%" andWeatherImage: [UIImage imageNamed:@"rain.png"]];
    City *montreal = [[City alloc]initWithName:@"Montreal" weatherDescription:@"Cloudy and windy" currentTime:@"14:02" currentTemperature:@"-10 C" chanceOfPrecipitation:@"10%" andWeatherImage:[UIImage imageNamed:@"wind.png"]];
    City *rioDeJaneiro = [[City alloc]initWithName:@"Rio de Janeiro" weatherDescription:@"Cloudy" currentTime:@"17:02" currentTemperature:@"40 C" chanceOfPrecipitation:@"5%" andWeatherImage:[UIImage imageNamed:@"cloudy-night.png"]];
    City *dubai = [[City alloc]initWithName:@"Dubai" weatherDescription:@"Cloudy" currentTime:@"23:02" currentTemperature:@"45 C" chanceOfPrecipitation:@"0%" andWeatherImage:[UIImage imageNamed:@"cloudy.png"]];
    City *berlim = [[City alloc]initWithName:@"Berlim" weatherDescription:@"Patly foggy" currentTime:@"19:02" currentTemperature:@"18 C" chanceOfPrecipitation:@"60%" andWeatherImage:[UIImage imageNamed:@"fog.png"]];
    
    UINavigationController *vancouverNavController = [self createNavigationController:vancouver];
    UINavigationController *montrealNavController = [self createNavigationController:montreal];
    UINavigationController *rioDeJaneiroNavController = [self createNavigationController:rioDeJaneiro];
    UINavigationController *dubaiNavController = [self createNavigationController:dubai];
    UINavigationController *berlimNavController = [self createNavigationController:berlim];
    
    NSArray *navControllers = [NSArray arrayWithObjects:vancouverNavController, montrealNavController, rioDeJaneiroNavController, dubaiNavController, berlimNavController, nil];
    
    [myTabBarController setViewControllers:navControllers animated:NO];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

-(UINavigationController *)createNavigationController:(City *)city {
    
    CityViewController *cityViewController = [[CityViewController alloc] initWithCity:city];
    [cityViewController setTitle:city.name];
    UINavigationController *cityNavigationController= [[UINavigationController alloc]initWithRootViewController:cityViewController];
    
    return cityNavigationController;
    
}

@end

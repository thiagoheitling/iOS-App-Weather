//
//  LHWAppDelegate.m
//  Weather
//
//  Created by Steven Masuch on 2014-07-30.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LHWAppDelegate.h"
#import "City.h"
#import "CityViewController.h"

@implementation LHWAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    
    // Your code goes here
    // Don't forget to assign the window a rootViewController
    
    UITabBarController *myTabBarController = [[UITabBarController alloc] init];    
    self.window.rootViewController = myTabBarController;
    
    City *vancouver = [[City alloc]initWithName:@"Vancouver" weatherDescription:@"sunny" currentTime:@"11:02" currentTemperature:@"25 C" andChanceOfPrecipitation:@"30%"];
    City *montreal = [[City alloc]initWithName:@"Montreal" weatherDescription:@"cloudy" currentTime:@"14:02" currentTemperature:@"-10 C" andChanceOfPrecipitation:@"10%"];
    City *rioDeJaneiro = [[City alloc]initWithName:@"Rio de Janeiro" weatherDescription:@"sunny" currentTime:@"17:02" currentTemperature:@"40 C" andChanceOfPrecipitation:@"5%"];
    City *dubai = [[City alloc]initWithName:@"Dubai" weatherDescription:@"Extremely sunny" currentTime:@"23:02" currentTemperature:@"45 C" andChanceOfPrecipitation:@"0%"];
    City *berlim = [[City alloc]initWithName:@"Berlim" weatherDescription:@"fog" currentTime:@"19:02" currentTemperature:@"18 C" andChanceOfPrecipitation:@"60%"];
    
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

//
//  MapPageViewController.m
//  testing
//
//  Created by dev on 16/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "MapPageViewController.h"
#import "PListUser.h"
#import "PListUsers.h"

@interface MapPageViewController ()

@end

@implementation MapPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidAppear:(BOOL)animated
{
    
    PListUser* user = [[PListUsers current] user];
    CLLocationCoordinate2D poiCoodinates;
    
    poiCoodinates.latitude = user.latitude;
    poiCoodinates.longitude = user.longitude;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(poiCoodinates, 750, 750);
    
    [self.mapView setRegion:viewRegion animated:YES];
    [super viewDidAppear:true];
}

@end

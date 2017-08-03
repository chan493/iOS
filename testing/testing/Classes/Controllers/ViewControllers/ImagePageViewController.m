//
//  ImagePageViewController.m
//  testing
//
//  Created by dev on 15/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "ImagePageViewController.h"
#import "PListUsers.h"
#import "PListUser.h"
#import "ViewController.h"

@interface ImagePageViewController ()

@end

@implementation ImagePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    PListUser* user = [[PListUsers current] user];
    self.addressLabel.text =  user.address;
    [self.photoImageView setImage:[UIImage imageNamed:user.photo]];
    [super viewDidAppear:true];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

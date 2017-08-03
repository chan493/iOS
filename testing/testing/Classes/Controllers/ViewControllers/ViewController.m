//
//  ViewController.m
//  Testing
//
//  Created by dev on 24/1/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "AppConfig.h"
#import "ViewController.h"
#import "PListUsers.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self->lblText setText:@"some user"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleButtonClick:(id)sender {
    self->lblText.text = self->txtInput.text;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
     [self.view endEditing:YES];
//    [self.txtInput resignFirstResponder];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    [[PListUsers current] setUser: [[PListUsers current] getUserByName:self->lblText.text]];
}

@end

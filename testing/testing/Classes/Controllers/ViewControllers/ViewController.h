//
//  ViewController.h
//  Testing
//
//  Created by dev on 24/1/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UILabel *lblText;
    IBOutlet UITextField *txtInput;
    IBOutlet UIButton *btnClick;
}

- (IBAction)handleButtonClick:(id)sender;

@end


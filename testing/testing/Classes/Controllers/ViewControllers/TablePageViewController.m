//
//  TablePageViewController.m
//  testing
//
//  Created by dev on 23/2/17.
//  Copyright (c) 2017 dev. All rights reserved.
//

#import "TablePageViewController.h"
#import "PListUser.h"
#import "PListUsers.h"
#import <Foundation/Foundation.h>
#import <objc/runtime.h>

@import UIKit;

@interface TablePageViewController ()

@end

@implementation TablePageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [PListUsers.current.allUsers count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString* cellId = @"PListUserDataCell";
    UITableViewCell* cell = [tableView dequeueReusableCellWithIdentifier:cellId];
    
    PListUser* user = PListUsers.current.allUsers[indexPath.row];

    @autoreleasepool {
        unsigned int numberOfProperties = 0;
        objc_property_t *propertyArray = class_copyPropertyList([PListUser class], &numberOfProperties);
        
        for (NSUInteger i = 0; i < numberOfProperties; i++)
        {
            objc_property_t property = propertyArray[i];
            NSString *name =  [[NSString alloc] initWithUTF8String:property_getName(property)];
            NSString *attributesString = [[NSString alloc] initWithUTF8String:property_getAttributes(property)];
            NSLog(@"Property %@ attributes: %@", name, attributesString);
        }
        free(propertyArray);
    }    
    
//    for () {
//        UILabel* label = [[UILabel alloc] init];
//        label.lineBreakMode = NSLineBreakByWordWrapping;
//        [label setTranslatesAutoresizingMaskIntoConstraints:NO];
//        [label addConstraint:[NSLayoutConstraint constraintWithItem:titleLabel
//                                                               attribute:NSLayoutAttributeWidth
//                                                               relatedBy:NSLayoutRelationEqual
//                                                                  toItem:nil
//                                                               attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:200]];
//        label.font = [UIFont fontWithName:@"System Bold" size:18.0];
//        
//        label.text = ];
//        [cell addSubview:label];
//    }
    
    return cell;
}



/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

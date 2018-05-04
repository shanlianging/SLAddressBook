//
//  ViewController.m
//  AdressBook
//
//  Created by 武传亮 on 2018/5/4.
//  Copyright © 2018年 武传亮. All rights reserved.
//

#import "ViewController.h"
#import "SLAddressBookHelp.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


    


}
- (IBAction)sl_getAddressBookAction:(id)sender {
    
    
    [[SLAddressBookHelp sharedInstance] sl_getUserContacts:self addressBookModels:^(NSArray *addressBookModels) {
        
    }];
    
    [[SLAddressBookHelp sharedInstance] sl_getAddressNameWithController:self addressName:^(NSString *name, NSString *phone) {
        NSLog(@"name:   %@  phone:  %@", name, phone);
    } show:NO];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

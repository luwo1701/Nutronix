//
//  LoginController.m
//  Nutronix
//
//  Created by Luke Worley on 7/12/16.
//  Copyright © 2016 LJWProductions. All rights reserved.
//

#import "LoginController.h"

@interface LoginController ()

@end

@implementation LoginController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)registerUser:(id)sender{
    //if either textFields are empty
    if ([_UserNameText.text isEqualToString:@""] || [_PasswordText.text isEqualToString:@""]){
    //log an error screen to the User
        
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"My Alert"
            message:@"This is an action sheet."
        preferredStyle:UIAlertControllerStyleActionSheet];
        [alert self];
    }
}
@end

//
//  ViewController.m
//  Sunshine
//
//  Created by Liam Russell on 11/06/2015.
//  Copyright (c) 2015 Liam Russell. All rights reserved.
//

#import "SWRegisterViewController.h"
#import <Shine/Shine.h>

typedef NS_ENUM(NSUInteger, SWGender) {
    SWGenderMale = 0
    ,SWGenderFemale = 1
};

@interface SWRegisterViewController ()

@property (nonatomic, weak) IBOutlet UITextField *emailTextField;
@property (nonatomic, weak) IBOutlet UITextField *zipCode;
@property (nonatomic, weak) IBOutlet UITextField *birthYear;
@property (nonatomic, weak) IBOutlet UITextField *firstNameTextField;
@property (nonatomic, weak) IBOutlet UITextField *lastNameTextField;
@property (nonatomic, weak) IBOutlet UISegmentedControl *genderSegmentedControl;
@property (weak, nonatomic) IBOutlet UITextField *middleNameTextField;

@end

@implementation SWRegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.sdfd
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)registerSelected:(id)sender {

    SWUser *userDetails = SWUser.new;
    
    if (self.firstNameTextField.text) {
        userDetails.firstName = self.firstNameTextField.text;
    }
    
    if (self.lastNameTextField.text) {
        userDetails.lastName = self.lastNameTextField.text;
    }
    
    [Shine registerUserDetails:userDetails];
}

@end
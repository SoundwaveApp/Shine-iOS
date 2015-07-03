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
}

- (IBAction)registerSelected:(id)sender {

    [self.view endEditing:YES];
    
    //Create a new Shine user
    SWUser *shineUser = SWUser.new;
    
    if (self.firstNameTextField.text) {
        shineUser.firstName = self.firstNameTextField.text;
    }
    
    if (self.lastNameTextField.text) {
        shineUser.lastName = self.lastNameTextField.text;
    }
    
    if (self.emailTextField.text) {
        shineUser.email = self.emailTextField.text;
    }
    
    if (self.zipCode.text) {
        shineUser.zip = self.zipCode.text;
    }
    
    if (self.birthYear.text) {
        shineUser.yearOfBirth = self.birthYear.text;
    }
    
    if (self.middleNameTextField.text) {
        shineUser.middleName = self.middleNameTextField.text;
    }
    
    switch (self.genderSegmentedControl.selectedSegmentIndex) {
        case SWGenderMale:
            shineUser.gender = @"M";
            break;
        case SWGenderFemale:
            shineUser.gender = @"F";
            break;
    }
    
    //Register the user with Shine
    [Shine registerUserDetails:shineUser];
    
    [[[UIAlertView alloc] initWithTitle:@"Registration" message:@"Registration Complete" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil] show];

}

@end
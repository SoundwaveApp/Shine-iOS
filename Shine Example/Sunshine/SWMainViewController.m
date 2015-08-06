//
//  SWMainViewController.m
//  Sunshine
//
//  Created by Brian Boyle on 15/07/2015.
//  Copyright (c) 2015 Liam Russell. All rights reserved.
//

#define SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] != NSOrderedAscending)

@import AddressBook;
#import "SWMainViewController.h"
#import <Shine/Shine.h>

@interface SWMainViewController ()
@property (nonatomic, strong) CLLocationManager *locationManager;
@end

@implementation SWMainViewController

- (void)setupCoreLocation {
    
    self.locationManager = [[CLLocationManager alloc] init];
    self.locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters;
    self.locationManager.distanceFilter = 10.0;
    self.locationManager.pausesLocationUpdatesAutomatically = NO;
    self.locationManager.delegate = self;

    if (SYSTEM_VERSION_GREATER_THAN_OR_EQUAL_TO(@"8.0")) {
        [self.locationManager requestWhenInUseAuthorization];
    }
    
    [self.locationManager startUpdatingLocation];
    
}


- (IBAction)turnOnLocation:(UIButton *)sender {
    
    [self setupCoreLocation];
    
}

- (IBAction)turnOnContacts:(UIButton *)sender {
    
    if (ABAddressBookGetAuthorizationStatus() == kABAuthorizationStatusNotDetermined) {
        ABAddressBookRequestAccessWithCompletion(ABAddressBookCreateWithOptions(NULL, NULL), ^(bool granted, CFErrorRef error) {
            if (granted) {
                [Shine syncContacts];
            }
        });
    }
    else {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"" message:@"You have already requested contacts access." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
    }
    
}


#pragma mark - CLLocationManagerDelegate

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    [Shine updateLocation:locations];
    
}

@end

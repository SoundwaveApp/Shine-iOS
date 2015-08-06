//
//  SWMainViewController.h
//  Sunshine
//
//  Created by Brian Boyle on 15/07/2015.
//  Copyright (c) 2015 Liam Russell. All rights reserved.
//

#import <UIKit/UIKit.h>
@import CoreLocation;

@interface SWMainViewController : UIViewController <CLLocationManagerDelegate>

- (IBAction)turnOnLocation:(UIButton *)sender;
- (IBAction)turnOnContacts:(UIButton *)sender;
@end

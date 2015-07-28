//
//  Shine.h
//  Shine
//  Created by Brian Boyle on 08/06/2015.
//  Copyright (c) 2015 Soundwave. All rights reserved.


@import UIKit;
@import Foundation;
@import CoreLocation;


//! Project version number for Shine.
FOUNDATION_EXPORT double ShineVersionNumber;

//! Project version string for Shine.
FOUNDATION_EXPORT const unsigned char ShineVersionString[];

// In this header, you should import all the public headers of your framework using statements like #import <Shine/PublicHeader.h>
#import <Shine/SWUser.h>

@interface Shine : NSObject


#pragma mark - Startup

+ (void)setDeveloperKey:(NSString *)token;
+ (void)registerUserDetails:(SWUser *)userDetails;
+ (void)updateLocation:(NSArray *)locations;

#pragma mark - Permissions

+ (void)syncContacts;


#pragma mark - Debug

+ (void)enableLogging;
+ (void)enableVerboseLogging;

@end

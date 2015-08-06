//
//  SWUser.h
//  Shine
//
//  Created by Brian Boyle on 16/06/2015.
//  Copyright (c) 2015 Liam Russell. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SWUser : NSObject

@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *middleName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *email;
@property (nonatomic, copy) NSString *zip;
@property (nonatomic, copy) NSString *yearOfBirth;
@property (nonatomic, copy) NSString *dateOfBirth;
@property (nonatomic, copy) NSString *gender;

@end

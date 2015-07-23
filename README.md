#Shine iOS SDK#
![logo](https://cloud.githubusercontent.com/assets/3185423/8828208/e1cddf76-3088-11e5-9baf-a6461adee499.png)

This guide will walk you through adding Shine to your iOS application.

##Getting started##


To begin using Shine you will need to acquire your unique application key. Currently these applications keys are given out on an ad-hoc basis by Soundwave. Please contact Soundwave if you have not received your key or would like to enquire about receiving a key.

Check out the example Shine app above for help getting started.

###Requirements###

Shine SDK requires iOS 7.1+

###Cocoapods Installation###
Shine can be installed using [Cocoapods](http://cocoapods.org). Simple add the following to your Podfile and run _pod install_.
```bash

pod 'Shine', '~>1.0'
```

###Manual Installation###

Shine SDK needs to be installed manually.

 1. Download the latest shine from [Github](https://github.com/SoundwaveApp/Shine-iOS/tree/master/Shine.framework)
 2. Drag Shine.framework into your Xcode project, ticking the “Copy items if needed” checkbox.

**Add Other Linker Flag**

 3. Select your Xcode project in the file navigator sidebar.
 4. Select your project, then it’s “Build Settings" Tab.
 5. Search for “Other Linker Flags”.
 6. Double click the “Other Linker Flags” row’s value area, on the right side. A pop-up should appear.
 7. Add “-ObjC” by pressing the + button if it is hasn’t already been added

![linker](https://cloud.githubusercontent.com/assets/3185423/8828333/841a2ed8-3089-11e5-8434-cb2e111eb12c.png)


#Initializing Shine#


To begin using shine follow these steps:

*  Import Shine into your `AppDelegate` class 
```objective-c

#import <Shine/Shine.h>
```

* Add the following to your method `willFinishLaunchingWithOptions`. At this point you will need to provide your unique application key which is available by contacting Soundwave.

```objective-c

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Shine setDeveloperKey:@"<Your-Dev-Key>"];
    return YES;
}
```

Once you have added this code, Shine will start capturing data once your app launches.


#User Registration#


You can capture user registration data by adding the following code to your app:

```objective-c

...
//Create a new Shine user
SWUser *shineUser = SWUser.new;
shineUser.firstName = @"John";
shineUser.lastName = @"Smith";
shineUser.email = @"john.smith@soundwave.com";

//Register the user with Shine
[Shine registerUserDetails:shineUser];
...
```

#Optional Integration Points#
The following Shine integration points are not mandatory when using Shine.
##Location Capture##
Shine can capture a device's location if the host app has the required location services permissions.
To capture location data, you need to add the following code to a class that conforms to the CLLocationDelegate protocol.
```objective-c

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    [Shine updateLocation:locations];
}
```
Shine location tracking works for both _**kCLAuthorizationStatusAuthorizedAlways**_ and _**kCLAuthorizationStatusAuthorizedWhenInUse**_. However, location data is only associated with song plays when the host app has _**kCLAuthorizationStatusAuthorizedAlways**_ permission.

An example of capturing location data is available in the example app.

##Contacts Syncing##
Shine can capture a device's contacts if the host app has the required contacts access permissions.
```objective-c
ABAddressBookRequestAccessWithCompletion(ABAddressBookCreateWithOptions(nil, nil), ^(bool granted, CFErrorRef error) {
       if (granted) {
           [Shine syncContacts];
       }
   });

```

An example of syncing contacts data is available in the example app.

#Troubleshooting#

**Q**. _I don't think Shine is capturing any data_

**A**. Turn on logging before you set your Developer Key. Shine logs will tell you if there are any problems capturing data.

```objective-c

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [Shine enableLogging];
    [Shine setDeveloperKey:@"<Your-Dev-Key>"];
    return YES;
}
```

--------

**Q**. _I get an error "Undefined symbols for architecture"_

![Error](https://cloud.githubusercontent.com/assets/3185423/8828356/9d7f3cf6-3089-11e5-8ac7-4973e4266067.png)

**A**. Make sure you have added `-ObjC` to your **Other Linker Flags**

-------
**Q**. _I get an error "*Shine Authorization Failed: Please Enter A Valid Developer Key*"_

**A**. Make sure you have a valid Developer Key and have entered it correctly. Please contact Soundwave to obtain a Developer Key.

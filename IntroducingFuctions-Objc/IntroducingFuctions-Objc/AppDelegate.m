//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
   
    NSString *myName = @"Brian";
   /* NSString *introduction = [NSString stringWithFormat:@"My name is %@", myName];
    NSString *japaneseIntro = [myName stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntro); */

    countDownTillIntroduction(4);
    printIntroductions(myName);
    return YES;
}

// Define new functions here...
int printIntroductions(NSString *name)
{
 
    NSString *introduction = [NSString stringWithFormat:@"My name is %@", name];
    NSString *japaneseIntro = [name stringByAppendingString:@" to moushimasu"];
    
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntro);


    return 0;
}

int countDownTillIntroduction(int numberOfDays)
{
    if (numberOfDays == 0) {
        NSLog(@"The time has come");
    }
    else {
        NSLog(@"%d days left until introductions", numberOfDays);
        int oneLessday = numberOfDays - 1;
        countDownTillIntroduction(oneLessday);
    }
    return 0;
}



@end

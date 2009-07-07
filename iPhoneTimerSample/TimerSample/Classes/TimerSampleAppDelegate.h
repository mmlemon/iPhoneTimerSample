//
//  TimerSampleAppDelegate.h
//  TimerSample
//
//  Created by mmlemon on 09/07/06.
//  Copyright hi-farm.net 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@class TimerSampleViewController;

@interface TimerSampleAppDelegate : NSObject <UIApplicationDelegate> {
    UIWindow *window;
    TimerSampleViewController *viewController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet TimerSampleViewController *viewController;

@end


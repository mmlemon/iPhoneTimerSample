//
//  TimerSampleViewController.h
//  TimerSample
//
//  Created by mmlemon on 09/07/06.
//  Copyright hi-farm.net 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TimerSampleViewController : UIViewController {
	
	IBOutlet UIButton *startBtn;
	IBOutlet UIButton *stopBtn;
	IBOutlet UITextField *resTf;
	
	NSTimeInterval startTime;
	NSTimeInterval currentTime;
	NSTimer *timer;
}

@property(nonatomic, retain) IBOutlet UIButton *startBtn;
@property(nonatomic, retain) IBOutlet UIButton *stopBtn;
@property(nonatomic, retain) IBOutlet UITextField *resTf;

@property(readwrite) NSTimeInterval startTime;
@property(readwrite) NSTimeInterval currentTime;
@property(nonatomic, retain) NSTimer *timer;

-(IBAction) startTimer;
-(IBAction) stopTimer;

@end


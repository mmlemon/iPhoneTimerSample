//
//  TimerSampleViewController.m
//  TimerSample
//
//  Created by mmlemon on 09/07/06.
//  Copyright hi-farm.net 2009. All rights reserved.
//

#import "TimerSampleViewController.h"

@implementation TimerSampleViewController

@synthesize startBtn;
@synthesize stopBtn;
@synthesize resTf;
@synthesize startTime;
@synthesize timer;
@synthesize currentTime;

// 継続的に呼ばれる。
-(void)updateTimer:(NSTimer *)t
{
	// 経過時刻をアップデート
	self.currentTime = [NSDate timeIntervalSinceReferenceDate] - self.startTime;
	// 表示
	[self.resTf setText:[NSString stringWithFormat:@"%.4f sec", currentTime]];
}

// 計測開始
-(IBAction) startTimer
{
	// 数値を初期化
	self.currentTime = 0;
	// 開始
	// 開始時刻を保持
	self.startTime = [NSDate timeIntervalSinceReferenceDate];
	// 時間をアップデートできるように設定
	self.timer = [NSTimer scheduledTimerWithTimeInterval:0.01
												  target:self
												selector:@selector(updateTimer:)
												userInfo:nil
												 repeats:YES
	];
	
	// ボタンの有効無効を切り替える
	[self.startBtn setEnabled:NO];
	[self.stopBtn setEnabled:YES];
}

// 計測終了
-(IBAction) stopTimer
{
	// 時間を算出
	currentTime = [NSDate timeIntervalSinceReferenceDate] - self.startTime;
	// 経過時間を表示
	[self.resTf setText:[NSString stringWithFormat:@"%.4f sec", currentTime]];
	// ボタンの有効無効を設定
	[self.startBtn setEnabled:YES];
	[self.stopBtn setEnabled:NO];
	// タイマーを停止
	[self.timer invalidate];
	
}

/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/


/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/


/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
	[startBtn release];
	[stopBtn release];
	[resTf release];
    [super dealloc];
}

@end

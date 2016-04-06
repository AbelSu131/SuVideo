//
//  ViewController.h
//  SuVideo
//
//  Created by AbelSu on 16/4/5.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>

@interface ViewController : UIViewController
@property (nonatomic ,strong) AVPlayer *player;



- (IBAction)play:(id)sender;

- (IBAction)stop:(id)sender;

@end


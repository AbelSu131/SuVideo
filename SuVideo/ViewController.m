//
//  ViewController.m
//  SuVideo
//
//  Created by AbelSu on 16/4/5.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
  
    
    
    
    _player = [[AVPlayer alloc]init];
    // 1.获取URL(远程/本地)
    
    NSURL *url = [[NSBundle mainBundle] URLForResource:@"play.mp4" withExtension:nil];
    //NSURL *url = [NSURL URLWithString:@"http://v1.mukewang.com/a45016f4-08d6-4277-abe6-bcfd5244c201/L.mp4"];
    
    // 2.创建AVPlayerItem
    AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
    
    
    
    // 3.创建AVPlayer
    _player = [AVPlayer playerWithPlayerItem:item];
    
    // 4.添加AVPlayerLayer
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:_player];
    layer.videoGravity=AVLayerVideoGravityResizeAspect;
    layer.frame = CGRectMake(10, 20,300,300);
    
    // self.view.bounds.size.width
    [self.view.layer addSublayer:layer];
    
    
   
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//播放视频
- (IBAction)play:(id)sender {
    [_player play];
}
//停止播放视频
- (IBAction)stop:(id)sender {
    [_player pause];
}

@end

//
//  ViewController.m
//  App1
//
//  Created by hipiao. on 15/11/16.
//  Copyright (c) 2015年 hipiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}
-(IBAction)clickAction:(id)sender{
    
    
    NSString *paramStr = [NSString stringWithFormat:@"yourAppTest://username=%@&age=%@&address=%@", @"test123", @"100", @"上海市"];
    NSURL *url = [NSURL URLWithString:[paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    BOOL hasInstagram = [[UIApplication sharedApplication] canOpenURL:url];
    
    [[UIApplication sharedApplication] openURL:url];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

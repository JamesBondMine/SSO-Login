//
//  ViewController.m
//  APP2
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


    NSString *paramStr = [NSString stringWithFormat:@"myAppTest://username=%@&age=%@&address=%@", @"test123", @"100", @"shanghai"];
    NSURL *url = [NSURL URLWithString:[paramStr stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [[UIApplication sharedApplication] openURL:url];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

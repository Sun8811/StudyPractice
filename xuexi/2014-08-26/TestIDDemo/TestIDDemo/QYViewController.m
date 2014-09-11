//
//  QYViewController.m
//  TestIDDemo
//
//  Created by qingyun on 14-8-26.
//  Copyright (c) 2014年 hnqingyun. All rights reserved.
//

#import "QYViewController.h"

@interface QYViewController ()

@end

@implementation QYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSArray *myArrary = [[NSArray alloc] init];
    id anotherArray = myArrary;
    
    NSString *myString = [[NSString alloc] init];
    anotherArray = myString;
    
    id myInt = myString;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  LabelText
//
//  Created by 吴狄 on 16/9/5.
//  Copyright © 2016年 Leven. All rights reserved.
//

#import "ViewController.h"
#import "LWLabel.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LWLabel *lab=[[LWLabel alloc]initWithFrame:CGRectMake(30, 200, 300, 50)];
    lab.text=@"刘文回复彭刚涛:你在搞么斯啊?";
    lab.rangeArr=(id)@[NSStringFromRange(NSMakeRange(0, 2)),NSStringFromRange(NSMakeRange(4, 3))];
    lab.selectBlobk=^(NSString *str,NSRange range){
        NSLog(@"%@",str);
    };
    [self.view addSubview:lab];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

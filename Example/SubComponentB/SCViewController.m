//
//  SCViewController.m
//  SubComponentC
//
//  Created by sysuleiw on 07/09/2019.
//  Copyright (c) 2019 sysuleiw. All rights reserved.
//

#import "SCViewController.h"
//#import <MGJRouter/MGJRouter.h>
#import <SubComponentB/SubComponentB.h>
@interface SCViewController ()

@property (nonatomic, strong) UIButton *btn;
@end

@implementation SCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view addSubview:self.btn];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (UIButton *)btn
{
    if (!_btn)
    {
        _btn = [UIButton new];
        [_btn setTitle:@"打开子组件C" forState:UIControlStateNormal];
        _btn.frame = CGRectMake(0, 0, 200, 100);
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
        [_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _btn;
}

- (void)btnAction
{
//        [self presentViewController:[SubComponentC new] animated:YES completion:nil];
//    [MGJRouter openURL:@"gfloan://subcomponentc" withUserInfo:@{@"presentvc":self} completion:^(id result) {
//    }];
}
@end

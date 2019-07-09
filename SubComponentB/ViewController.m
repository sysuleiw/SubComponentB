//
//  ViewController.m
//  SubComponentA
//
//  Created by 王磊 on 2019/7/8.
//  Copyright © 2019 王磊. All rights reserved.
//

#import "ViewController.h"
#import "SubViewControllerB.h"
@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view addSubview:self.btn];
}

- (UIButton *)btn
{
    if (!_btn)
    {
        _btn = [UIButton new];
        [_btn setTitle:@"打开子组件B" forState:UIControlStateNormal];
        _btn.frame = CGRectMake(0, 0, 200, 100);
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
        [_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _btn;
}

- (void)btnAction
{
    SubViewControllerB *vc = [SubViewControllerB new];
    [self presentViewController:vc animated:YES completion:nil];
}
@end

//
//  ViewController.m
//  custerDragView
//
//  Created by 张闯闯 on 2019/7/26.
//  Copyright © 2019 张闯闯. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *bottom_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    bottom_btn.backgroundColor = [UIColor redColor];
    [bottom_btn setTitle:@"手势拖动" forState:UIControlStateNormal];
    [bottom_btn addTarget:self action:@selector(addTagetType:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview: bottom_btn];
    
    [bottom_btn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.equalTo(@70);
        make.right.equalTo(self.view.mas_right);
        make.left.equalTo(self.view.mas_left);
        make.center.equalTo(self.view).mas_offset();
    }];
}
-(void)addTagetType:(UIButton *)senter{
}

@end

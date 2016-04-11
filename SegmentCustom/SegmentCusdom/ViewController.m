//
//  ViewController.m
//  SegmentCusdom
//
//  Created by 郭艳芳 on 16/4/11.
//  Copyright © 2016年 郭艳芳. All rights reserved.
//

#import "ViewController.h"
#import "SegmentView.h"

@interface ViewController ()<TouchLabelDelegate>

@property (nonatomic, strong) SegmentView *segmentView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.segmentView = [[SegmentView alloc]initWithFrame:CGRectMake(0, 50, CGRectGetWidth(self.view.frame), 50)];
    self.segmentView.titleArray = @[@"美女",@"帅哥",@"奇葩",@"正太",@"萌妹"];
    [self.segmentView.scrollLine setBackgroundColor:[UIColor greenColor]];
    self.segmentView.titleSelectedColor = [UIColor brownColor];

    self.segmentView.touchDelegate = self;

    [self.view addSubview:self.segmentView];
    
}

- (void)touchLabelWithIndex:(NSInteger)index{
    
    NSLog(@"我是第%ld个label",index);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

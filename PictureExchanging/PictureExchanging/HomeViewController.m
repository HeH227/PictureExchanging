//
//  HomeViewController.m
//  PictureExchanging
//
//  Created by apple on 16/4/10.
//  Copyright © 2016年 RedBird. All rights reserved.
//

#import "HomeViewController.h"
#import "SidebarTableViewController.h"

@interface HomeViewController ()
@property (nonatomic, strong)SidebarTableViewController *sidebarVC;
@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"首页";
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    //添加侧边栏
    [self addSidebar];
    [self addGestureControl];
}

//生成侧边栏
- (void)addSidebar
{
    _sidebarVC = [[SidebarTableViewController alloc] init];
    [self.view addSubview:_sidebarVC.view];
}

//添加手势
- (void)addGestureControl
{
    UISwipeGestureRecognizer *rightSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(rightSwipeGestureAction:)];
    rightSwipeGesture.direction = UISwipeGestureRecognizerDirectionRight;
    [self.view addGestureRecognizer:rightSwipeGesture];
    
    UISwipeGestureRecognizer *leftSwipeGesture = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(leftSwipeGestureAction:)];
    leftSwipeGesture.direction = UISwipeGestureRecognizerDirectionLeft;
    [self.view addGestureRecognizer:leftSwipeGesture];
}

- (void)rightSwipeGestureAction:(UISwipeGestureRecognizer *)sender
{
    
    //侧边栏移动显示动画
    [UIView animateWithDuration:1 animations:^{
        _sidebarVC.view.frame = CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width*0.4, [UIScreen mainScreen].bounds.size.height-108);
    }];
}

- (void)leftSwipeGestureAction:(UISwipeGestureRecognizer *)sender
{
    [UIView animateWithDuration:1 animations:^{
        _sidebarVC.view.frame = CGRectMake(0, 64, 0, [UIScreen mainScreen].bounds.size.height-108);
    }];
//    [_sidebarVC.view removeFromSuperview];
//    [_sidebarVC removeFromParentViewController];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

//
//  UIKitDemoViewController_UIView.m
//  UIKitDemo
//
//  Created by Nn on 16/2/18.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemoViewController_UIView.h"

@interface UIKitDemoViewController_UIView ()
@property (nonatomic, weak) UIView *demoView;
@end

@implementation UIKitDemoViewController_UIView

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTitle];
    [self loadDemoView];
    [self loadSwitch];
    // Do any additional setup after loading the view.
}
- (void)loadTitle
{
    self.title = @"UIView";
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)loadDemoView
{
    UIView *demoView = [[UIView alloc] init];
    self.demoView = demoView;
    demoView.backgroundColor = [UIColor yellowColor];
    demoView.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:demoView];
    [BaseDemoLayoutExtend addLayoutWidth:300 atView:demoView];
    [BaseDemoLayoutExtend addLayoutHeight:300 atView:demoView];
    [BaseDemoLayoutExtend addLayoutTop:100 atView:demoView superView:self.view];
    [BaseDemoLayoutExtend addLayoutCenterX:0 adView:demoView superView:self.view];
    
    UIView *subView = [[UIView alloc] init];
    subView.backgroundColor = [UIColor redColor];
    subView.translatesAutoresizingMaskIntoConstraints = NO;
    [demoView addSubview:subView];
    [BaseDemoLayoutExtend addLayoutWidth:50 atView:subView];
    [BaseDemoLayoutExtend addLayoutHeight:50 atView:subView];
    [BaseDemoLayoutExtend addLayoutRight:-20 atView:subView superView:demoView];
    [BaseDemoLayoutExtend addLayoutBottom:5 atView:subView superView:demoView];
}
- (void)loadSwitch
{
    UISwitch *clipsToBoundsSwitch = [[UISwitch alloc] init];
    UILabel *clipsToBoundsLabel = [[UILabel alloc] init];
    clipsToBoundsSwitch.on = self.demoView.clipsToBounds;
    clipsToBoundsLabel.text = @"clipsToBounds";
    clipsToBoundsSwitch.translatesAutoresizingMaskIntoConstraints = NO;
    clipsToBoundsLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:clipsToBoundsSwitch];
    [self.view addSubview:clipsToBoundsLabel];
    [clipsToBoundsSwitch addTarget:self
                            action:@selector(clipsToBoundsAction:)
                  forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:150 atView:clipsToBoundsLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:clipsToBoundsLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:clipsToBoundsLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutBottom:20 atView:clipsToBoundsLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutLeftView:clipsToBoundsLabel
                                  rightView:clipsToBoundsSwitch
                                  superView:self.view
                                   distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0
                                           topView:clipsToBoundsSwitch
                                        bottomView:clipsToBoundsLabel
                                         superView:self.view];
    
    UISwitch *hiddenSwitch = [[UISwitch alloc] init];
    UILabel *hiddenLabel = [[UILabel alloc] init];
    hiddenSwitch.on = self.demoView.hidden;
    hiddenLabel.text = @"hidden";
    hiddenSwitch.translatesAutoresizingMaskIntoConstraints = NO;
    hiddenLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:hiddenSwitch];
    [self.view addSubview:hiddenLabel];
    [hiddenSwitch addTarget:self
                     action:@selector(hiddenAction:)
           forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:150 atView:hiddenLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:hiddenLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:hiddenLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:hiddenLabel bottomView:clipsToBoundsLabel superView:self.view distance:20];
    [BaseDemoLayoutExtend addLayoutLeftView:hiddenLabel rightView:hiddenSwitch superView:self.view distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0 topView:hiddenSwitch bottomView:hiddenLabel superView:self.view];
    
    
    UISlider *alphaSlider = [[UISlider alloc] init];
    UILabel *alphaLabel = [[UILabel alloc] init];
    alphaSlider.maximumValue = 1;
    alphaSlider.minimumValue = 0;
    alphaSlider.value = self.demoView.alpha;
    alphaLabel.text = @"alpha";
    alphaSlider.translatesAutoresizingMaskIntoConstraints = NO;
    alphaLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:alphaSlider];
    [self.view addSubview:alphaLabel];
    [alphaSlider addTarget:self
                    action:@selector(alphaAction:)
          forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:60 atView:alphaLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:alphaLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:alphaLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:alphaLabel bottomView:hiddenLabel superView:self.view distance:20];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:alphaSlider];
    [BaseDemoLayoutExtend addLayoutLeftView:alphaLabel rightView:alphaSlider superView:self.view distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0 topView:alphaSlider bottomView:alphaLabel superView:self.view];
}


#pragma mark Actions
- (void)clipsToBoundsAction:(UISwitch *)sender
{
    self.demoView.clipsToBounds = sender.on;
}
- (void)hiddenAction:(UISwitch *)sender
{
    self.demoView.hidden = sender.on;
}
- (void)alphaAction:(UISlider *)sender
{
    self.demoView.alpha = sender.value;
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

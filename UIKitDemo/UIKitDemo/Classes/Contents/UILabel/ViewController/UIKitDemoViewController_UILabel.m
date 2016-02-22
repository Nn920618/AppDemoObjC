//
//  UIKitDemoViewController_UILabel.m
//  UIKitDemo
//
//  Created by Nn on 16/2/19.
//  Copyright © 2016年 Nn. All rights reserved.
//

#import "UIKitDemoViewController_UILabel.h"
#import "UIKitDemoViewController_FontName.h"

@interface UIKitDemoViewController_UILabel ()<UIKitDemoViewController_FontNameDelegate>
@property (nonatomic, weak) UILabel *demoLabel;

@property (nonatomic, weak) UISlider *fontSizeSlider;
@end

@implementation UIKitDemoViewController_UILabel

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadTitle];
    [self loadDemoLabel];
    [self loadSwitch];
}
- (void)loadTitle
{
    self.title = @"UILabel";
    self.view.backgroundColor = [UIColor whiteColor];
}
- (void)loadDemoLabel
{
    UILabel *demoLabel = [[UILabel alloc] init];
    self.demoLabel = demoLabel;
    demoLabel.text = @"Who will separate us from the love of Christ? Will hardship, or distress, or persecution, or famine, or nakedness, or peril, or sword? No, in al l these things we are more than conquerors through him who loved us.";
    demoLabel.translatesAutoresizingMaskIntoConstraints = NO;
    demoLabel.minimumScaleFactor = 1;
    demoLabel.layer.borderColor = [[UIColor redColor] CGColor];
    demoLabel.layer.borderWidth = 1 / [[UIScreen mainScreen] scale];
    [self.view addSubview:demoLabel];
    [BaseDemoLayoutExtend addLayoutWidth:300 atView:demoLabel];
    [BaseDemoLayoutExtend addLayoutHeight:150 atView:demoLabel];
    [BaseDemoLayoutExtend addLayoutTop:70 atView:demoLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutCenterX:0 adView:demoLabel superView:self.view];
}
- (void)loadSwitch
{
    NSArray *textAlignmentItems = @[@"Left",
                                    @"Center",
                                    @"Right",
                                    @"Justified",
                                    @"Natural"];
    UISegmentedControl *textAlignmentControl = [[UISegmentedControl alloc] initWithItems:textAlignmentItems];
    UILabel *textAlignmentLabel = [[UILabel alloc] init];
    textAlignmentControl.selectedSegmentIndex = 0;
    textAlignmentLabel.text = @"textAlignment";
    textAlignmentControl.translatesAutoresizingMaskIntoConstraints = NO;
    textAlignmentLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:textAlignmentControl];
    [self.view addSubview:textAlignmentLabel];
    [textAlignmentControl addTarget:self
                             action:@selector(textAlignmentAction:)
                   forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:textAlignmentLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:textAlignmentLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:textAlignmentLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutBottom:20 atView:textAlignmentLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutHeight:30 atView:textAlignmentControl];
    [BaseDemoLayoutExtend addLayoutLeftView:textAlignmentLabel rightView:textAlignmentControl superView:self.view distance:0];
    [BaseDemoLayoutExtend addLayoutRight:10 atView:textAlignmentControl superView:self.view];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0
                                           topView:textAlignmentControl
                                        bottomView:textAlignmentLabel
                                         superView:self.view];
    
    UISlider *numberOfLinesSlider = [[UISlider alloc] init];
    UILabel *numberOfLinesLabel = [[UILabel alloc] init];
    numberOfLinesSlider.maximumValue = 6;
    numberOfLinesSlider.minimumValue = 1;
    numberOfLinesSlider.value = self.demoLabel.numberOfLines;
    numberOfLinesLabel.text = @"numberOfLines";
    numberOfLinesSlider.translatesAutoresizingMaskIntoConstraints = NO;
    numberOfLinesLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:numberOfLinesSlider];
    [self.view addSubview:numberOfLinesLabel];
    [numberOfLinesSlider addTarget:self action:@selector(numberOfLinesAction:) forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:numberOfLinesLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:numberOfLinesLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:numberOfLinesLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:numberOfLinesLabel bottomView:textAlignmentLabel superView:self.view distance:20];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:numberOfLinesSlider];
    [BaseDemoLayoutExtend addLayoutLeftView:numberOfLinesLabel rightView:numberOfLinesSlider superView:self.view distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0
                                           topView:numberOfLinesSlider
                                        bottomView:numberOfLinesLabel
                                         superView:self.view];
    
    UISlider *fontSizeSlider = [[UISlider alloc] init];
    UILabel *fontSizeLabel = [[UILabel alloc] init];
    self.fontSizeSlider = fontSizeSlider;
    fontSizeSlider.maximumValue = 30;
    fontSizeSlider.minimumValue = 13;
    fontSizeSlider.value = 17;
    fontSizeLabel.text = @"FontSize";
    fontSizeSlider.translatesAutoresizingMaskIntoConstraints = NO;
    fontSizeLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:fontSizeSlider];
    [self.view addSubview:fontSizeLabel];
    [fontSizeSlider addTarget:self action:@selector(fontSizeAction:) forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:fontSizeLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:fontSizeLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:fontSizeLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:fontSizeLabel bottomView:numberOfLinesLabel superView:self.view distance:20];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:fontSizeSlider];
    [BaseDemoLayoutExtend addLayoutLeftView:fontSizeLabel rightView:fontSizeSlider superView:self.view distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0 topView:fontSizeSlider bottomView:fontSizeLabel superView:self.view];
    
    UISlider *minimumScaleFactorSlider = [[UISlider alloc] init];
    UILabel *minimumScaleFactorLabel = [[UILabel alloc] init];
    minimumScaleFactorSlider.maximumValue = 1;
    minimumScaleFactorSlider.minimumValue = 0.3;
    minimumScaleFactorSlider.value = 1;
    minimumScaleFactorLabel.text = @"minimumScaleFactor";
    minimumScaleFactorLabel.minimumScaleFactor = 0.3;
    minimumScaleFactorLabel.adjustsFontSizeToFitWidth = YES;
    minimumScaleFactorSlider.translatesAutoresizingMaskIntoConstraints = NO;
    minimumScaleFactorLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:minimumScaleFactorSlider];
    [self.view addSubview:minimumScaleFactorLabel];
    [minimumScaleFactorSlider addTarget:self
                                 action:@selector(minimumScaleFactorAction:)
                       forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:minimumScaleFactorLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:minimumScaleFactorLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:minimumScaleFactorLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:minimumScaleFactorLabel bottomView:fontSizeLabel superView:self.view distance:20];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:minimumScaleFactorSlider];
    [BaseDemoLayoutExtend addLayoutLeftView:minimumScaleFactorLabel
                                  rightView:minimumScaleFactorSlider
                                  superView:self.view
                                   distance:0];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0
                                           topView:minimumScaleFactorSlider
                                        bottomView:minimumScaleFactorLabel
                                         superView:self.view];
    
    
    UISwitch *adjustsFontSizeToFitWidthSwitch = [[UISwitch alloc] init];
    UILabel *adjustsFontSizeToFitWidthLabel = [[UILabel alloc] init];
    adjustsFontSizeToFitWidthSwitch.on = self.demoLabel.adjustsFontSizeToFitWidth;
    adjustsFontSizeToFitWidthLabel.text = @"adjustsFontSizeToFitWidth";
    adjustsFontSizeToFitWidthLabel.adjustsFontSizeToFitWidth = YES;
    adjustsFontSizeToFitWidthSwitch.translatesAutoresizingMaskIntoConstraints = NO;
    adjustsFontSizeToFitWidthLabel.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:adjustsFontSizeToFitWidthSwitch];
    [self.view addSubview:adjustsFontSizeToFitWidthLabel];
    [adjustsFontSizeToFitWidthSwitch addTarget:self
                                        action:@selector(adjustsFontSizeToFitWidthAction:)
                              forControlEvents:UIControlEventValueChanged];
    [BaseDemoLayoutExtend addLayoutWidth:140 atView:adjustsFontSizeToFitWidthLabel];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:adjustsFontSizeToFitWidthLabel];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:adjustsFontSizeToFitWidthLabel superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:adjustsFontSizeToFitWidthLabel
                                bottomView:minimumScaleFactorLabel
                                 superView:self.view
                                  distance:20];
    [BaseDemoLayoutExtend addLayoutLeftView:adjustsFontSizeToFitWidthLabel
                                  rightView:adjustsFontSizeToFitWidthSwitch
                                  superView:self.view
                                   distance:20];
    [BaseDemoLayoutExtend addLayoutDistanceCenterY:0
                                           topView:adjustsFontSizeToFitWidthSwitch
                                        bottomView:adjustsFontSizeToFitWidthLabel
                                         superView:self.view];
    
    UIButton *fontNameButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [fontNameButton setTitle:@"FontName" forState:UIControlStateNormal];
    fontNameButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.view addSubview:fontNameButton];
    [fontNameButton addTarget:self
                       action:@selector(changeFontNameAction:)
             forControlEvents:UIControlEventTouchUpInside];
    [BaseDemoLayoutExtend addLayoutWidth:90 atView:fontNameButton];
    [BaseDemoLayoutExtend addLayoutHeight:20 atView:fontNameButton];
    [BaseDemoLayoutExtend addLayoutLeft:10 atView:fontNameButton superView:self.view];
    [BaseDemoLayoutExtend addLayoutTopView:fontNameButton
                                bottomView:adjustsFontSizeToFitWidthLabel
                                 superView:self.view
                                  distance:20];
}


#pragma mark UIKitDemoViewController_FontNameDelegate
- (void)fontNameViewController:(nonnull UIKitDemoViewController_FontName *)viewController
              selectedFontName:(nullable NSString *)fontName
{
    CGFloat fontSize = self.fontSizeSlider.value;
    self.demoLabel.font = [UIFont fontWithName:fontName size:fontSize];
    [self.navigationController popToViewController:self animated:YES];
}

#pragma mark Actions
- (void)changeFontNameAction:(UIButton *)sender
{
    UIKitDemoViewController_FontName *showViewController = [[UIKitDemoViewController_FontName alloc] init];
    showViewController.delegate = self;
    [self.navigationController showViewController:showViewController sender:self];
}
- (void)fontSizeAction:(UISlider *)sender
{
    self.demoLabel.font = [self.demoLabel.font fontWithSize:sender.value];
}
- (void)minimumScaleFactorAction:(UISlider *)sender
{
    self.demoLabel.minimumScaleFactor = sender.value;
    [self.demoLabel setNeedsDisplay];
}
- (void)numberOfLinesAction:(UISlider *)sender
{
    self.demoLabel.numberOfLines = sender.value;
}
- (void)adjustsFontSizeToFitWidthAction:(UISwitch *)sender
{
    self.demoLabel.adjustsFontSizeToFitWidth = sender.on;
}
- (void)textAlignmentAction:(UISegmentedControl *)sender
{
    NSTextAlignment textAlignment = NSTextAlignmentLeft;
    switch (sender.selectedSegmentIndex) {
        case 1:
            textAlignment = NSTextAlignmentCenter;
            break;
        case 2:
            textAlignment = NSTextAlignmentRight;
            break;
        case 3:
            textAlignment = NSTextAlignmentJustified;
            break;
        case 4:
            textAlignment = NSTextAlignmentNatural;
            break;
        case 0:
        default:
            textAlignment = NSTextAlignmentLeft;
            break;
    }
    self.demoLabel.textAlignment = textAlignment;
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

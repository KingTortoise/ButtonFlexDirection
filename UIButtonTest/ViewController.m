//
//  ViewController.m
//  UIButtonTest
//
//  Created by 金文武 on 2020/8/13.
//  Copyright © 2020 金文武. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+flexDirection.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *testBtn;
@property (weak, nonatomic) IBOutlet UILabel *img_top_Label;
@property (weak, nonatomic) IBOutlet UILabel *img_left_Label;
@property (weak, nonatomic) IBOutlet UILabel *img_bottom_Label;
@property (weak, nonatomic) IBOutlet UILabel *img_right_Label;
@property (weak, nonatomic) IBOutlet UILabel *title_top_Label;
@property (weak, nonatomic) IBOutlet UILabel *title_left_Label;
@property (weak, nonatomic) IBOutlet UILabel *title_bottom_Label;
@property (weak, nonatomic) IBOutlet UILabel *title_right_Label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.testBtn setImage:[UIImage imageNamed:@"menu"] forState:UIControlStateNormal];
    [self.testBtn setTitle:@"哈哈" forState:UIControlStateNormal];
    [self.testBtn setImageAndTitleDirection:FlexDirectionTypeImgTop offset:0];
}

- (IBAction)valueChange:(UIStepper *)sender {
    switch (sender.tag) {
        case 0:
            self.img_top_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 1:
            self.img_left_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 2:
            self.img_bottom_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 3:
            self.img_right_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 4:
            self.title_top_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 5:
            self.title_left_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 6:
            self.title_bottom_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
        case 7:
            self.title_right_Label.text = [NSString stringWithFormat:@"%.1f",sender.value];
            break;
            
        default:
            break;
    }
    [self updateTestBtn];
}

- (void)updateTestBtn
{
    
    NSLog(@"原始Img%@",NSStringFromUIEdgeInsets(self.testBtn.imageEdgeInsets));
    NSLog(@"原始Title%@",NSStringFromUIEdgeInsets(self.testBtn.titleEdgeInsets));
    
    NSInteger img_top = [self.img_top_Label.text integerValue];
    NSInteger img_left = [self.img_left_Label.text integerValue];
    NSInteger img_bottom = [self.img_bottom_Label.text integerValue];
    NSInteger img_right = [self.img_right_Label.text integerValue];
    
    NSInteger title_top = [self.title_top_Label.text integerValue];
    NSInteger title_left = [self.title_left_Label.text integerValue];
    NSInteger title_bottom = [self.title_bottom_Label.text integerValue];
    NSInteger title_right = [self.title_right_Label.text integerValue];
    
    self.testBtn.imageEdgeInsets = UIEdgeInsetsMake(img_top, img_left, img_bottom, img_right);
    self.testBtn.titleEdgeInsets = UIEdgeInsetsMake(title_top, title_left, title_bottom, title_right);
    NSLog(@"现在Img%@",NSStringFromUIEdgeInsets(self.testBtn.imageEdgeInsets));
    NSLog(@"现在Title%@",NSStringFromUIEdgeInsets(self.testBtn.titleEdgeInsets));
}

@end

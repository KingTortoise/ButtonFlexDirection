//
//  UIButton+flexDirection.m
//  UIButtonTest
//
//  Created by 金文武 on 2020/8/13.
//  Copyright © 2020 金文武. All rights reserved.
//

#import "UIButton+flexDirection.h"
#import <objc/runtime.h>

@implementation UIButton (flexDirection)

- (void)setImageAndTitleDirection:(FlexDirectionType)type  offset:(NSInteger)offset
{
    if (!self.imageView.image || self.imageView.image.size.width == 0 || self.imageView.image.size.height == 0) {
        NSAssert(false, @"Please set the image first");
    }
    if (self.titleLabel.text.length == 0 || [self.titleLabel.text isEqualToString:@""]) {
        NSAssert(false, @"Please set the title first");
    }
    CGSize imgSize = self.imageView.image.size;
    UILabel *titleLabel = self.titleLabel;
    NSDictionary *attributes = @{NSFontAttributeName:titleLabel.font};
    CGSize textSize = [titleLabel.text boundingRectWithSize:CGSizeMake(self.frame.size.width-imgSize.width, self.frame.size.height) options:NSStringDrawingUsesLineFragmentOrigin attributes:attributes context:nil].size;
    switch (type) {
        case FlexDirectionTypeImgTop:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, textSize.width/2, textSize.height+offset, -textSize.width/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(imgSize.height+offset, -imgSize.width, 0, 0);
            break;
        case FlexDirectionTypeImgLeft:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, offset);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, offset, 0, 0);
            break;
        case FlexDirectionTypeImgBottom:
            self.imageEdgeInsets = UIEdgeInsetsMake(textSize.height+offset, textSize.width/2, 0, -textSize.width/2);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imgSize.width, imgSize.height+offset, 0);
            break;
        case FlexDirectionTypeImgRight:
            self.imageEdgeInsets = UIEdgeInsetsMake(0, textSize.width+offset, 0, -textSize.width);
            self.titleEdgeInsets = UIEdgeInsetsMake(0, -imgSize.width-offset, 0, imgSize.width);
            break;
        default:
            break;
    }
}

@end

//
//  UIButton+flexDirection.h
//  UIButtonTest
//
//  Created by 金文武 on 2020/8/13.
//  Copyright © 2020 金文武. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
typedef NS_ENUM(NSUInteger, FlexDirectionType) {
    FlexDirectionTypeImgTop    = 0,
    FlexDirectionTypeImgLeft   = 1,
    FlexDirectionTypeImgBottom = 2,
    FlexDirectionTypeImgRight  = 3
};

@interface UIButton (flexDirection)

/// 设置UIButton中Image和Title的位置
/// @param type 上、左、下、右
/// @param offset 图片和文本的间隔
- (void)setImageAndTitleDirection:(FlexDirectionType)type offset:(NSInteger)offset;
@end

NS_ASSUME_NONNULL_END

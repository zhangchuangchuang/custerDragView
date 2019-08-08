//
//  ZCPlaceTextView.h
//  custerDragView
//
//  Created by 张闯闯 on 2019/7/29.
//  Copyright © 2019 张闯闯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ZCPlaceTextView : UITextView
/** 占位文字 */
@property (nonatomic, strong) NSString *placeholderWord;

/** 占位文字颜色 */
@property (nonatomic, weak) UIColor *placeholderColor;
@end

NS_ASSUME_NONNULL_END

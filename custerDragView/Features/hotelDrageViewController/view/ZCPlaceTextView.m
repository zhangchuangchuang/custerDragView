
//
//  ZCPlaceTextView.m
//  custerDragView
//
//  Created by 张闯闯 on 2019/7/29.
//  Copyright © 2019 张闯闯. All rights reserved.
//

#import "ZCPlaceTextView.h"

@implementation ZCPlaceTextView
- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.font = [UIFont systemFontOfSize:15];
    
    // 监听文字的改变
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:self];
    //你好
}

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        
        self.font = [UIFont systemFontOfSize:15];
        
        // 监听文字的改变
        [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textDidChange:) name:UITextViewTextDidChangeNotification object:self];
        
    }
    return self;
}

- (void)textDidChange:(NSNotification *)note {
    
    // 会重新调用drawRect:方法
    [self setNeedsDisplay];
}

#pragma mark - setter方法
- (void)setPlaceholderWord:(NSString *)placeholderWord {
    _placeholderWord = placeholderWord;
    
    // 重绘
    [self setNeedsDisplay];
}


- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    _placeholderColor = placeholderColor;
    
    [self setNeedsDisplay];
}


- (void)setText:(NSString *)text {
    [super setText:text];
    
    [self setNeedsDisplay];
}

- (void)setFont:(UIFont *)font {
    [super setFont:font];
    
    [self setNeedsDisplay];
}

- (void)setAttributedText:(NSAttributedString *)attributed{
    [super setAttributedText:attributed];
    
    [self setNeedsDisplay];
}

#pragma mark - 系统方法

- (void)dealloc {
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self setNeedsDisplay];
}

/**
 *  每次调用这个方法就会把上一次绘制清空
 *
 */
- (void)drawRect:(CGRect)rect {
    if (self.hasText) return;
    
    // 属性
    NSMutableDictionary *attrs = [NSMutableDictionary dictionary];
    
    attrs[NSFontAttributeName] = self.font;
    
    attrs[NSForegroundColorAttributeName] = self.placeholderColor;
    
    // 绘文字
    rect.origin.x = 5;
    rect.origin.y = 8;
    rect.size.width -= rect.origin.x * 2;
    
    [self.placeholderWord drawInRect:rect withAttributes:attrs];
}


@end

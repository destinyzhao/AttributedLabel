//
//  AttributedLabel.m
//  AttributedLabel
//
//  Created by Alex on 15/10/29.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "AttributedLabel.h"
#import <CoreText/CoreText.h>
#import <QuartzCore/QuartzCore.h>

@implementation AttributedLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        
    }
    return self;
}

- (void)drawRect:(CGRect)rect{
    
    CATextLayer *textLayer = [CATextLayer layer];
    textLayer.string = _attributedString;
    textLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    [self.layer addSublayer:textLayer];
}

- (void)setText:(NSString *)text{
    [super setText:text];
    if (text == nil) {
        self.attributedString = nil;
    }else{
        self.attributedString = [[NSMutableAttributedString alloc] initWithString:text];
    }
}

- (void)setTextColor:(UIColor *)textColor fromIndex:(NSInteger)fromIndex length:(NSInteger)length
{
    if (fromIndex < 0||fromIndex > self.text.length-1||length+fromIndex > self.text.length) {
        return;
    }
    
    [_attributedString addAttribute:NSForegroundColorAttributeName
                              value:textColor
                              range:NSMakeRange(fromIndex, length)];
}

- (void)setFont:(UIFont *)font fromIndex:(NSInteger)fromIndex length:(NSInteger)length
{
    if (fromIndex < 0||fromIndex > self.text.length-1||length+fromIndex > self.text.length) {
        return;
    }
    
    [_attributedString addAttribute:(NSString *)kCTFontAttributeName
                       value:(id)CFBridgingRelease(CTFontCreateWithName((CFStringRef)font.fontName,
                                                      font.pointSize,
                                                      NULL))
                       range:NSMakeRange(fromIndex, length)];


}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end

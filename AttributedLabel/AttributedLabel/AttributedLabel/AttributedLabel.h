//
//  AttributedLabel.h
//  AttributedLabel
//
//  Created by Alex on 15/10/29.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AttributedLabel : UILabel

@property (strong, nonatomic) NSMutableAttributedString *attributedString;

- (void)setTextColor:(UIColor *)textColor fromIndex:(NSInteger)fromIndex length:(NSInteger)length;

- (void)setFont:(UIFont *)font fromIndex:(NSInteger)fromIndex length:(NSInteger)length;

@end

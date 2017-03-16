//
//  ViewController.m
//  AttributedLabel
//
//  Created by Alex on 15/10/29.
//  Copyright © 2015年 Alex. All rights reserved.
//

#import "ViewController.h"
#import "AttributedLabel.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet AttributedLabel *textLbl;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _textLbl.text = @"测试文本";
    _textLbl.backgroundColor = [UIColor grayColor];
    [_textLbl setFont:[UIFont systemFontOfSize:25] fromIndex:0 length:2];
    [_textLbl setFont:[UIFont systemFontOfSize:15] fromIndex:2 length:2];
    [_textLbl setTextColor:[UIColor redColor] fromIndex:0 length:2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  AutoLayout
//
//  Created by lb on 15/8/15.
//  Copyright (c) 2015年 李波. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *v1 = [[UIView alloc] init];
    v1.backgroundColor = [UIColor redColor];
    v1.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.view addSubview:v1];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30.0-[v1]-30.0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v1)]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-100.0-[v1]-30.0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v1)]];
    
    
    UIView *v2 = [[UIView alloc] init];
    v2.backgroundColor = [UIColor blueColor];
    v2.translatesAutoresizingMaskIntoConstraints = NO;
    [v1 addSubview:v2];
    
    [v1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[v2(200)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v2)]];
     [v1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-20-[v2]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v2)]];
    [v1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-20-[v2]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v2)]];
    
    UIView *v3 = [[UIView alloc] init];
    v3.backgroundColor = [UIColor yellowColor];
    v3.translatesAutoresizingMaskIntoConstraints = NO;
    [v1 addSubview:v3];
    
    [v1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-30-[v3]-30-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v3)]];
    [v1 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-40-[v3]-40-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(v3)]];
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"test.................................a";
    label.adjustsFontSizeToFitWidth = YES;
    label.textAlignment = NSTextAlignmentCenter;
    label.layer.masksToBounds = YES;
    label.layer.borderWidth = 1;
    label.layer.borderColor = [UIColor blackColor].CGColor;
    
    label.translatesAutoresizingMaskIntoConstraints = NO;
    [v3 addSubview:label];
    
    [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[label]|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)]];
     [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[label(40)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)]];
     [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[label]-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)]];
    [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[label(>=40,<=150)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(label)]];
    
    UIButton *btn = [UIButton buttonWithType:(UIButtonTypeContactAdd)];
    btn.translatesAutoresizingMaskIntoConstraints = NO;
    [v3 addSubview:btn];
    
    [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[label]-[btn]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(label,btn)]];
    [v3 addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-[btn][btn(>=30,<=44)]" options:0 metrics:nil views:NSDictionaryOfVariableBindings(btn)]];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

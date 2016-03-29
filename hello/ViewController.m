//
//  ViewController.m
//  hello
//
//  Created by hltravel on 16/3/29.
//  Copyright © 2016年 vive. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 200,30)];
    label.text = @"我的世界";
    label.backgroundColor = [UIColor blueColor];
    label.textColor = [UIColor whiteColor];
    //label.textAlignment = UITextAlignmentCenter;
    //label.font = [UIFont fontWithName:[UIFont familyNames] objectAtIndex:10] size:20];

    [self.view addSubview:label];
    
    CGRect frame = CGRectMake(20, 80, 200, 30);
    UIButton *btn = [[UIButton alloc] initWithFrame:frame];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"settitle" forState:UIControlStateNormal];
    btn.frame = frame;
    [btn addTarget:self action:@selector(doClick3) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
}


- (IBAction)doClick:(id)sender{
    //NSMutableString *sz = [NSMutableString stringWithFormat:self.text1.text];
    self.label1.text = @"sssss";
    self.text2.text = self.text1.text;
}

- (IBAction)doClick2:(id)sender{
    NSString *msg = @"xxxx";
    [self alert:msg];
}

- (IBAction)doClick3{
    NSString *msg = @"3333";
    [self alert:msg];
}


- (void)alert:(NSString *)msg{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"title--"
                                                   message:msg
                                                    delegate:self
                                         cancelButtonTitle:@"cancel"
                                          otherButtonTitles: nil];
    [alert show];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

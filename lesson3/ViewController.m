//
//  ViewController.m
//  lesson3
//
//  Created by 朱 皓斌 on 12-10-9.
//  Copyright (c) 2012年 朱 皓斌. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize textOfTextField;
- (void)viewDidLoad
{
    UIButton *newButton=[[UIButton alloc]init];
    newButton=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [newButton setTitle:@"提交" forState:UIControlStateNormal];
    newButton.frame=CGRectMake(10, 10, 50, 30);
    [newButton addTarget:self action:@selector(touchMeOnce:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.view addSubview:newButton];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchMeOnce:(id)sender {
    
    NSString *text=[[NSString alloc]init];
    text=textOfTextField.text;
    //NSLog(@"%@",text);
    
    UIAlertView *newAlertView=[[UIAlertView alloc]initWithTitle:@"textField的文本是" message:text delegate:self cancelButtonTitle:@"点击取消/ok" otherButtonTitles:nil, nil];
    
    [newAlertView show];
}
@end


















//
//  ViewController.m
//  gitTest
//
//  Created by 秦榕 on 2017/9/1.
//  Copyright © 2017年 秦榕. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//新增代码
- (instancetype)initWithDict:(NSDictionary*)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
    
}
+ (instancetype)ssssWithDict:(NSDictionary*)dict
{
    
    return [[self alloc] initWithDict:dict];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    //什么鬼东西啊
    [self sleep];
}

-(void)say{
    NSLog(@"asjhdjkashdkjsadkjsad");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)sleep{
    NSLog(@"saasjhdasdasdjlk");
}



@end

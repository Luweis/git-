//
//  ViewController.m
//  运行时
//
//  Created by wangmengmian on 16/3/30.
//  Copyright © 2016年 wangmengmian. All rights reserved.
//

#import "ViewController.h"
#import <objc/runtime.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //aklkakskda;kd;lka;ksd;alk;ldalkd;lak;da;lk;ldka;lkd;la;kd;la;ldk
    //akdksakd;l
}
+(void)initialize{
    [self getIvars];
}
+ (void)getIvars
{
    unsigned int count = 0;
//    
//    // 拷贝出所有的成员变量列表
//    Ivar *ivars = class_copyIvarList([UITextField class], &count);
//    
//    for (int i = 0; i<count; i++) {
//        // 取出成员变量
//        //        Ivar ivar = *(ivars + i);
//        Ivar ivar = ivars[i];
//        
//        // 打印成员变量名字
//        //NSLog(@"%s %s", ivar_getName(ivar), ivar_getTypeEncoding(ivar));
//    }
//    
    // 释放
   // free(ivars);
//    char count = class_getIvarLayout([UITextField class]);
//    NSLog(@"%c",count);
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
   Method*motheds =  class_copyMethodList([UIButton class], &count);
    for (int i=0; i<count; i++) {
        Method mothe = motheds[i];
        SEL sel = method_getName(mothe);
        NSLog(@"%s",sel_getName(sel));
    }
   
}

@end
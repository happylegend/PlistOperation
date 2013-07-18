//
//  PlistOperation.m
//  PlistOperation
//
//  Created by 紫冬 on 13-7-18.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

#import "PlistOperation.h"

@implementation PlistOperation


//读取plist，该类是静态方法，传入plist文件的名字，不包含后缀名
+(NSMutableDictionary *)objectFromPlist:(NSString *)plistName
{
    NSString *plistPath = [[NSBundle mainBundle] pathForResource:plistName ofType:@"plist"];
    NSMutableDictionary *dic = [[[NSMutableDictionary alloc] initWithContentsOfFile:plistPath] autorelease];
    
    return dic;
}

//将数据写入plist文件中
-(void)writeToPlist
{
    //获取一个字典
    NSMutableDictionary *dic = [[NSMutableDictionary alloc] init];
    [dic setValue:@"jim" forKey:@"name"];
    [dic setValue:@"123" forKey:@"password"];
    [dic setValue:@"m" forKey:@"gender"];
    [dic setValue:@"jiqiangshenghero@163.com" forKey:@"email"];
    
    //如果将数据写入我们手动创建在工程文件中的plist文件中
    NSArray *paths=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,NSUserDomainMask,YES);
    NSString *plistPath1 = [paths objectAtIndex:0];
    
    //得到完整的文件名
    NSString *filename=[plistPath1 stringByAppendingPathComponent:@"userinfo.plist"];  //获取plist的完整路径
    [dic writeToFile:filename atomically:YES];
    
    NSDictionary *dic2 = [[NSDictionary alloc] initWithContentsOfFile:filename];   //将数据写入该plist文件中
    NSLog(@"dic2 is: %@", dic2);
}

@end

//
//  PlistOperation.h
//  PlistOperation
//
//  Created by 紫冬 on 13-7-18.
//  Copyright (c) 2013年 qsji. All rights reserved.
//

/*
 操作plist的一般步骤：
 第一步：创建plist文件
        创建步骤：New File...--->Resource--->Property List
        注意我们创建了plist文件以后，如果是手动添加数据的话，直接引用名字即可读取数据，不必用完全路径
 
        如果用代码创建的，因为一般创建在了docment中了，所以需要使用完整路径来读或者写数据
 
 第二步：读写plist，一般使用NSArray或者NSDictionary，一般使用NSDictionary比较多
 
 */

#import <Foundation/Foundation.h>

@interface PlistOperation : NSObject

//读取plist，该类是静态方法，传入plist文件的名字，不包含后缀名，因为在代码中默认使用pllist后缀名
+(NSMutableDictionary *)objectFromPlist:(NSString *)plistName;

//将数据写入plist文件中
-(void)writeToPlist;

@end

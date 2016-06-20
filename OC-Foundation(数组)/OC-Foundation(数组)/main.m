//
//  main.m
//  OC-Foundation(数组)
//
//  Created by qingyun on 16/4/1.
//  Copyright © 2016年 qingyun. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //数组也是有序的集合，存放OC对象，可以下表访问，不能存放C的数据类型和nil，但是可以存放NSNull对象
        // 不可变数组 NSArray
        //实例方法创建
        NSArray *arr1=[[NSArray alloc] initWithObjects:@"str1",@"str2",@"str3",@"str4", nil];//nil作为结束标志！
        NSLog(@"arr1==>%@",arr1);
        //类方法创建
        NSArray *arr2=[NSArray arrayWithObjects:@"for",@"is",@"if", nil];
        NSLog(@"arr2=>>%@",arr2);
        //数组长度
        NSLog(@"%ld,%ld",arr2.count,[arr1 count]);
        //访问数组元素 注意不要越界
        NSLog(@"arr1[0]=%@,%@",[arr1 firstObject],[arr1 objectAtIndex:0]);
        NSLog(@"arr1[3]=%@,%@",[arr1 lastObject],[arr1 objectAtIndex:arr1.count-1]);
        //遍历元素
        //1.下标遍历
        for (int i=0; i<arr1.count; i++)
        {
            NSLog(@"arr1[%d]=%@",i,[arr1 objectAtIndex:i]);
        }
        //枚举器遍历  顺序枚举
        NSLog(@">>>>>枚举器遍历<<<<<");
        NSEnumerator *enou1=[arr1 objectEnumerator];//将数组转化为枚举器
        id obj;//id表示OC任意类型的对象
        while (obj=[enou1 nextObject])
        {
            NSLog(@"%@",obj);
        }
        NSLog(@">>>>>反向枚举<<<<<");
        enou1=[arr1 reverseObjectEnumerator];
        while (obj=[enou1 nextObject])
        {
            NSLog(@"%@",obj);
        }
        NSLog(@">>>>>快速枚举<<<<<");//for..in默认顺序
        for (id obje in arr1)
        {
            NSLog(@"%@",obje);
        }
        //包含
        if([arr2 containsObject:@"if"])
        {
            NSLog(@"contain");
        }
        else
        {
            NSLog(@"not contain");
        }
        //连接数组
        arr1=[arr1 arrayByAddingObjectsFromArray:arr2];
        NSLog(@"arr1==>%@",arr1);
        //添加个别元素（只能在默认拼接）
        arr1=[arr1 arrayByAddingObject:@"hello"];
        NSLog(@"arr1==>%@",arr1);
        //根据内容输出下标 查找 9223372036854775807表示没找到NSNotFound
        NSLog(@">>>%ld",[arr1 indexOfObject:@"for"]);
        //分割成字符串
        NSString *myStr=[arr1 componentsJoinedByString:@"!"];
        NSLog(@"myStr=%@",myStr);
        //转化回去：NSString的一个操作
        NSLog(@"newArray=%@",[myStr componentsSeparatedByString:@"!"]);//经常使用！
        //截取新的数组
        NSLog(@"%@",[arr1 subarrayWithRange:NSMakeRange(1, 2)]);
        NSArray *p1=[NSArray arrayWithObjects:@"xiaoming",@"rose",nil];
        NSArray *p2=@[@"hello",@"jack",@"123"];
        NSLog(@"%@",p1);
        NSLog(@"%@",p2);
        //获取元素个数
        [p2 count];
        NSLog(@"%ld",[p2 count]);
        NSLog(@"%ld",p1.count);
        //访问数组元素
        //索引/下标
        NSLog(@"%@",[p2 objectAtIndex:1]);
        NSLog(@"%@",p2[2]);
        //遍历数组
//        int i=0;
        //id obj代表数组中的每一个元素
        for(id obj in p2)
        {
            NSLog(@"%@",obj);
//            [p2 objectAtIndex:i];
        }
        for (int i=0; i<p2.count; i++)
        {
            NSLog(@"%@",[p2 objectAtIndex:i]);
        }
        NSArray *p3=[p1 arrayByAddingObjectsFromArray:p2];
        NSLog(@"%@,%@",p3,p1);
        p1=[p1 arrayByAddingObject:@"good"];
        NSLog(@"%@",p1);
        //根据内容输出下标
        NSLog(@"==%ld",[p1 indexOfObject:@"good"]);
        //分割成字符串
        NSString *str1=[p1 componentsJoinedByString:@"~"];
        NSLog(@"%@",str1);
        //转化回去
        NSLog(@"%@",[str1 componentsSeparatedByString:@"~"]);
        //截取新的数组
        NSLog(@"%@",[p1 subarrayWithRange:NSMakeRange(1, 2)]);
    }
    return 0;
}

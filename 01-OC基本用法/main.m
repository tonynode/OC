//
//  main.m
//  OC
//
//  Created by Cat Hite on 24/03/2021.
//  Copyright © 2021 Cat Hite. All rights reserved.
//
//

/*
 1. OC源文件的後綴名.m m代表message 代表OC的最重要的1個機制 消息機制。
 
 2. #import指令
    1）以#開頭，是1個預處理指令
    2）作用：是#include指令的增強版。將文件的內容在預編譯的時候copy指令的地方
    3）增強：同1個文件無論#import多少次，只會包含1次
 
 3. 框架是功能集
 
 4. autoreleasepool(自動釋放池)
 
 5. NSLog()
    1）printf函數增強版
    2）語法：
        NSLog(@"string",變量列表)
        2021-03-24 16:58:57.641924+0800 OC[7794:4298631] Hello, World!
        執行時間 程序名[進程編號:線程編號] 輸出信息
    3）字符串最後的"\n"沒效
 
 6. NSString()
    1）C語言的字符串存儲方式
        ・使用字符數組
        ・使用字符指針
    2）OC NSString()：
        NSString 類型的指針類型，專門用在存儲OC字符串的地址
    3）OC字符串常量必須要使用1個前綴@符號
        "jack"  C語言的字符串
        @"jack" OC字符串常量
        NSString類型的"指針變量"，只能存儲OC字符串的地址
 
 7. NSLog(OC字符串, 變量列表)
    要輸出OC字符串的值，使用占位符%@  NSLog(@"hi %@",str);
 
 8. NS前綴（NextStep --＞ Cocoa --＞ Foundation框架中）
 
 9. @符號
        1）C字符串 --＞ OC字符串 "jack" --> @"jack"
        2）OC的絕大部分的關鍵字都是以@符號開頭
 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    NSString *str = @"jack";
    NSLog(@"hi %@", str);
    return 0;
}

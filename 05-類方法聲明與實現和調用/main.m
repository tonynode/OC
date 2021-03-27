//
//  main.m
//  05-方法聲明與實現和調用
//
//  Created by Cat Hite on 26/03/2021.
//  Copyright © 2021 Cat Hite. All rights reserved.
//
/*
1.無參數方法
    聲明語法 "-(返回值類型) 方法名稱"
    實現語法 "-(返回值類型) 方法名稱{}"
    調用    "[對象名 方法名]"
2.1參數方法
    聲明語法 "-(返回值類型) 方法名稱:(參數類型)形參名稱"
    實現語法 "-(返回值類型) 方法名稱:(參數類型)形參名稱{}"
    調用    "[對象名 方法名:實參]"
3.多參數方法
    聲明語法 "-(返回值類型) 方法名稱:(參數類型)形參名稱1 方法名稱(可為空):(參數類型)形參名稱2"
    實現語法 "-(返回值類型) 方法名稱:(參數類型)形參名稱1 方法名稱(可為空):(參數類型)形參名稱2{}"
    調用    "[對象名 方法名:實參1 方法名稱(可為空):實參2]"
4.特殊問題
    1）在方法的實現中,可以直接訪問屬性（方法中的屬性對應着當前的對象）
 */
#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    NSString *_name;
    int _age;
}
- (void) run;
- (void) eatWith:(NSString *)foodName;
- (int) sum:(int)num1 :(int)num2;
@end

@implementation Person
- (void) run{
    NSLog(@"meow?");
}

- (void) eatWith:(NSString *)foodName{
    NSLog(@"meow %@", foodName);
}

- (int) sum:(int)num1 :(int)num2{
    NSLog(@"sum %d", num1 + num2);
    return num1 + num2;
}
@end

int main(int argc, const char * argv[]) {
    Person *p1 = [Person new];
    NSLog(@"%d",[p1 sum:1 :2]);
    return 0;
}

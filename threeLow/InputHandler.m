//
//  InputHandler.m
//  threeLow
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
-(NSString*)stringConvert:(NSString*)input{
    char inputChar[255];
    NSLog(@"%@",input);
    fgets(inputChar,255,stdin);
    NSString*string= [NSString stringWithUTF8String:inputChar];
    return [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
@end

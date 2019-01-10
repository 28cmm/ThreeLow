//
//  Dice.m
//  threeLow
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import "Dice.h"

@implementation Dice
- (instancetype)init
{
    self = [super init];
    if (self) {

        _currentNumber = [self randomize];

    }
    return self;
}

-(NSNumber*)randomize{
    return @(arc4random_uniform(5)+1);
}
@end

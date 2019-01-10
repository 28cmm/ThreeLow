//
//  Dice.h
//  threeLow
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Dice : NSObject


-(NSNumber*)randomize;
@property NSNumber *currentNumber;
@end

NS_ASSUME_NONNULL_END

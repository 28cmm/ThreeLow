//
//  GameController.h
//  threeLow
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

NS_ASSUME_NONNULL_BEGIN

@interface GameController : NSObject

-(void)holdDie:(NSInteger)input;
-(void)reset;
-(void)score;
-(void)resetLowestScore;
@property NSNumber *lowestScore;
@property NSNumber *numberOfRoll;
@property NSMutableArray <Dice *> *setOfDice;
@property NSMutableArray *holdRoll;


@end

NS_ASSUME_NONNULL_END

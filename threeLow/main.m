//
//  main.m
//  threeLow
//
//  Created by Yilei Huang on 2019-01-09.
//  Copyright © 2019 Joshua Fanng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Dice.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Boolean gameOn = YES;

        InputHandler *inputHandler =[InputHandler new];
        GameController *gameController = [GameController new];
        
        while(gameOn){
            
            NSString *userInput = [inputHandler stringConvert:@"please enter a command"];
            if([userInput  isEqual: @"roll"]){
                if([gameController.numberOfRoll integerValue] >=5){
                    NSLog(@"please enter reset to continue. your rolled 5 time already \n");
                }else{
                    for(int i=0;i < 5;i++){
                        if([[gameController holdRoll] containsObject: [gameController setOfDice][i]]){
                            NSLog(@"[%@]",[gameController setOfDice][i].currentNumber);
                        }else{
                            [gameController setOfDice][i] = [Dice new];
                            NSLog(@"%@",[gameController setOfDice][i].currentNumber);
                        }
                        //                    Dice * dice =[Dice new];
                        //                    [[gameController storeRoll] insertObject:[  currentNumber] atIndex:i];
                    }
                    [gameController score];
                    gameController.numberOfRoll = @([gameController.numberOfRoll integerValue]+1);
                    
                    NSLog(@"\n you rolled %@ since your last reset",gameController.numberOfRoll);
                }
                
//                for(Dice *item in [dice storeRoll]){
//
//                }
//                for(int i=0;i < [dice storeRoll].count;i++){
//                    NSLog(@"%@",[dice storeRoll][i]);
//                }
            }else if([userInput isEqual: @"holds"]){
                NSString *numberHold = [inputHandler stringConvert:@"please hold dice's index"];
                [gameController holdDie:[numberHold integerValue]];
//                for(int i=0; i<5;i++){
//                    if(i == [numberHold integerValue] ){
//                        [[gameController holdRoll] addObject:[gameController setOfDice][i]];
//                    }
//                }
            }else if([userInput isEqual: @"un-holds"]){
                NSString *numberHold = [inputHandler stringConvert:@"please un-hold dice's index"];
                for(int i=0; i<5;i++){
                    if(i == [numberHold integerValue] ){
                        //check if hold array has the input hold array;
                        if([[gameController holdRoll] containsObject:[gameController setOfDice][i]]){
                            [[gameController holdRoll] removeObject:[gameController setOfDice][i]];
                        }else{
                            NSLog(@"this dice is not hold");
                        }
                    }
                }
            }else if([userInput isEqual:@"reset"]){
                [gameController reset];
            }else if([userInput isEqual:@"reset LS"]){
                [gameController resetLowestScore];
            }
            NSLog(@"Score to beat: %@ \n",gameController.lowestScore);
            
        }
    }
    return 0;
}

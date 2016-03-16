//
//  Card.m
//  CardDemo
//
//  Created by apple on 16/3/8.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import "Card.h"

@implementation Card
-(int)match:(NSArray *)otherCards
{
    int score=0;
    for (Card *card in otherCards){
        if ([card.contents isEqualToString:self.contents]) {
            score=1;
        }
    }
    return score;
}

@end

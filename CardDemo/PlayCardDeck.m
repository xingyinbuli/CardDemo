//
//  PlayCardDeck.m
//  CardDemo
//
//  Created by apple on 16/3/12.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import "PlayCardDeck.h"
#import "PlayingCard.h"

@implementation PlayCardDeck
-(instancetype)init
{
    self=[super init];
    if (self) {
        for(NSString *suit in [PlayingCard validSuits ]){
            for(NSUInteger rank=1;rank<=[PlayingCard maxRank];rank++){
                PlayingCard *card=[[PlayingCard alloc]init];
                card.rank=rank;
                card.suit=suit;
                [self addCard:card];
            }
        }
    }
    return self;
}

@end

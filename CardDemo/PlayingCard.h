//
//  PlayingCard.h
//  CardDemo
//
//  Created by apple on 16/3/12.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (nonatomic,strong)NSString *suit;
@property (nonatomic)NSUInteger rank;
+(NSArray *)validSuits;
+(NSUInteger)maxRank;
@end

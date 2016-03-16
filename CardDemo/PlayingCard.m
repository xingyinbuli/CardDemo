//
//  PlayingCard.m
//  CardDemo
//
//  Created by apple on 16/3/12.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import "PlayingCard.h"

@implementation PlayingCard
-(NSString *)contents
{
    NSArray *rankString=[PlayingCard rankstrings];
    return [rankString[self.rank] stringByAppendingString:self.suit];
}
@synthesize suit=_suit;
-(void)setSuit:(NSString *)suit
{
    if ([[PlayingCard validSuits]containsObject: suit]) {
        _suit=suit;
    }
}
+(NSUInteger)maxRank
{
    return [[self rankstrings]count]-1;
}
-(void)setRank:(NSUInteger)rank
{
    if (rank<=[PlayingCard maxRank]) {
        _rank=rank;
    }
}

+(NSArray*)validSuits
{
    return @[@"♦︎",@"♥︎",@"♠︎",@"♣︎"];
}
-(NSString *)suit
{
    return _suit ? _suit :@"?";
}
+(NSArray *)rankstrings
{
    return @[@"?",@"A",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"Q",@"K",@"A",@"2",@"10",@"J"];
}
@end

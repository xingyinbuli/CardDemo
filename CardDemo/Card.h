//
//  Card.h
//  CardDemo
//
//  Created by apple on 16/3/8.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject
@property (strong,nonatomic)NSString *contents;
@property (nonatomic,getter=isChosen)BOOL chosen;
@property (nonatomic,getter=isMatched)BOOL matched;
-(int)match:(NSArray *)otherCards;

@end

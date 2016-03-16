//
//  Deck.h
//  CardDemo
//
//  Created by apple on 16/3/8.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject
-(void)addCard:(Card*)card atTop:(BOOL)atTop;
-(void)addCard:(Card *)card;
-(Card*)drawRamdownCard;
@end

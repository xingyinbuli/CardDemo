//
//  ViewController.m
//  CardDemo
//
//  Created by apple on 16/3/8.
//  Copyright © 2016年 xingyinbuli. All rights reserved.
//

#import "ViewController.h"
#import "PlayCardDeck.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *filpsLabel;
@property (nonatomic)int flips;
@property (strong,nonatomic)Deck *deck;
@end

@implementation ViewController
-(Deck *)deck
{
    if(!_deck)_deck=[self createDeck];
        return _deck;
}
-(Deck *)createDeck
{
    return [[PlayCardDeck alloc]init];
}
-(void)setFlips:(int)flips
{
    _flips=flips;
    self.filpsLabel.text=[NSString stringWithFormat:@"flips:%d",self.flips];
    NSLog(@"%d",self.flips);
    
}
- (IBAction)touchButton:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else {
        Card *randomCard=[self.deck drawRamdownCard];
        [sender setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
        [sender setTitle:randomCard.contents forState:UIControlStateNormal];
        
    }
    self.flips++;
}




@end

//
//  ViewController.h
//  Calculator
//
//  Created by user151112 on 29.1.19..
//  Copyright © 2019. user151112. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    bool operatorPressed, addPressed, minusPressed;
    
    NSString *firstEntry;
    NSString * secondEntry;
}
@property (strong, nonatomic) IBOutlet UILabel *labelOutput;


- (IBAction)minusPressed:(id)sender;
- (IBAction)addPressed:(id)sender;
- (IBAction)clearOutput:(id)sender;
- (IBAction)showResults:(id)sender;

-(IBAction)buttonPressed:(UIButton *)sender;

-(void) resetOperators;

@end


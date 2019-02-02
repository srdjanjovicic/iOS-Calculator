//
//  ViewController.h
//  Calculator
//
//  Created by user151112 on 29.1.19..
//  Copyright © 2019. user151112. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    bool operatorPressed;
    NSString *whichOperator;
    
    NSMutableString *firstEntry;
    NSMutableString * secondEntry;
}
@property (strong, nonatomic) IBOutlet UILabel *labelOutput;

- (IBAction)clearOutput:(id)sender;
- (IBAction)showResults:(id)sender;
- (IBAction)deleteChar:(id)sender;

-(IBAction)buttonPressed:(UIButton *)sender;
-(IBAction)operatorPressed:(UIButton *)sender;

@end


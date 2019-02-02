//
//  ViewController.m
//  Calculator
//
//  Created by user151112 on 29.1.19..
//  Copyright © 2019. user151112. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    operatorPressed = false;
    whichOperator =[NSString string];
    
    firstEntry = [NSMutableString string];
    secondEntry = [NSMutableString string];
}

- (IBAction)clearOutput:(id)sender {
    _labelOutput.text = NULL;
    operatorPressed = false;
    whichOperator = @"";
    [firstEntry setString:@""];
    [secondEntry setString:@""];
}

- (IBAction)showResults:(id)sender {
    if ( [firstEntry length] > 0 && [secondEntry length] > 0 && operatorPressed ) {
        firstEntry = [NSMutableString stringWithFormat:@"%i", [self calculateResult]];
        _labelOutput.text = firstEntry;
        
        operatorPressed = false;
        whichOperator = @"";
        [secondEntry setString:@""];
    }
}

- (IBAction)deleteChar:(id)sender {
}

-(IBAction)buttonPressed:(UIButton *)sender{
    int tag = (int)sender.tag;
    
    if ( operatorPressed == false ){
        
        firstEntry = [NSMutableString stringWithFormat:@"%@%i", firstEntry, tag];
    }
    else {
        secondEntry = [NSMutableString stringWithFormat:@"%@%i", secondEntry, tag];
    }
    _labelOutput.text = [NSString stringWithFormat:@"%@ %@ %@", firstEntry, whichOperator, secondEntry];
}

-(IBAction)operatorPressed:(UIButton *)sender{
    whichOperator = sender.currentTitle;
    operatorPressed = true;
    
    _labelOutput.text = [NSString stringWithFormat:@"%@ %@ %@", firstEntry, whichOperator, secondEntry];
}

-(int)calculateResult{
    int a = [firstEntry intValue];
    int b = [secondEntry intValue];
    int rez;
    
    if ( [whichOperator isEqualToString:@"+"] ){
        rez = a + b;
    }
    else if ( [whichOperator isEqualToString:@"-"] ){
        rez = a - b;
    }
    else if ( [whichOperator isEqualToString:@"/"] ){
        rez = a / b;
    }
    else if ( [whichOperator isEqualToString:@"*"] ){
        rez = a * b;
    }
    else {
        rez = a % b;
    }
    
    return rez;
}

@end

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
    addPressed = false;
    minusPressed = false;
    operatorPressed = false;
    
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)minusPressed:(id)sender {
    [self resetOperators];
    minusPressed = true;
}

- (IBAction)addPressed:(id)sender {
    [self resetOperators];
    addPressed = true;
}

- (IBAction)clearOutput:(id)sender {
    _labelOutput.text = NULL;
    operatorPressed = false;
    firstEntry = NULL;
    secondEntry = NULL;
}

- (IBAction)showResults:(id)sender {
    int a = [firstEntry intValue];
    int b = [secondEntry intValue];
    int rez;
    if ( addPressed ) {
        rez = a + b;
    }
    else{
        rez = a - b;
    }
    
    _labelOutput.text = [NSString stringWithFormat:@"%i", rez];
}

-(IBAction)buttonPressed:(UIButton *)sender{
    int tag = (int)sender.tag;
    
    if ( operatorPressed == false ){
        if ( firstEntry == NULL ){
            firstEntry = [NSString stringWithFormat:@"%i", tag];
        }
        else{
            firstEntry = [NSString stringWithFormat:@"%@%i", firstEntry, tag];
        }
        _labelOutput.text = firstEntry;
    }
    else {
        if ( secondEntry == NULL ){
            secondEntry = [NSString stringWithFormat:@"%i", tag];
        }
        else{
            secondEntry = [NSString stringWithFormat:@"%@%i", secondEntry, tag];
        }
        _labelOutput.text = secondEntry;
    }
}

-(void) resetOperators{
    addPressed = false;
    minusPressed = false;
    operatorPressed = true;
}

@end

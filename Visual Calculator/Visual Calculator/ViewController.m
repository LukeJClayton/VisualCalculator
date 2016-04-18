//
//  ViewController.m
//  Visual Calculator
//
//  Created by Luke Clayton on 21/01/2016.
//  Copyright © 2016 Luke Clayton. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

float input1,input2;

BOOL decimal = true;
int operator; //1=+ 2=- 3=* 4=/

#pragma mark - NumPad Inputs
-(IBAction)numPadOne;
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"1"];
}
-(IBAction)numPadTwo
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"2"];
}
-(IBAction)numPadThree
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"3"];
}
-(IBAction)numPadFour
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"4"];
}
-(IBAction)numPadFive
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"5"];
}
-(IBAction)numPadSix
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"6"];
}
-(IBAction)numPadSeven
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"7"];
}
-(IBAction)numPadEight
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"8"];
}
-(IBAction)numPadNine
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"9"];
}
-(IBAction)numPadZero
{
    calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"0"];
}
-(IBAction)decimalPoint
{
    if(decimal)
    {
        calculatorDisplay.text = [calculatorDisplay.text stringByAppendingString:@"."];
        decimal = false;
    }
}

#pragma marks -  Operator Inputs
-(IBAction)add
{
    operator = 1;
    input1 = [calculatorDisplay.text floatValue];
    calculatorDisplay.text = @"";
    decimal=true;
}
-(IBAction)subtract
{
    operator = 2;
    input1 = [calculatorDisplay.text floatValue];
    calculatorDisplay.text = @"";
    decimal=true;
}
-(IBAction)multiply
{
    operator = 3;
    input1 = [calculatorDisplay.text floatValue];
    calculatorDisplay.text = @"";
    decimal=true;
}
-(IBAction)divide
{
    operator = 4;
    input1 = [calculatorDisplay.text floatValue];
    calculatorDisplay.text = @"";
    decimal=true;
}

#pragma mark - Calculate
-(IBAction)calculate
{
    switch(operator)
    {
        case 1:
            input2 = input1+([calculatorDisplay.text floatValue]);
            break;
        case 2:
            input2 = input1-([calculatorDisplay.text floatValue]);
            break;
        case 3:
            input2 = input1*([calculatorDisplay.text floatValue]);
            break;
        case 4:
            input2 = input1/([calculatorDisplay.text floatValue]);
            break;
        default:
            return;
            break;
    }
    NSString *output = [NSString stringWithFormat:@"%g",input2];
    calculatorDisplay.text = output;
    decimal=true;
}

#pragma mark - Clear
-(IBAction)clear
{
    calculatorDisplay.text = @"";
    decimal=true;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    calculatorDisplay.adjustsFontSizeToFitWidth = YES;
}

@end

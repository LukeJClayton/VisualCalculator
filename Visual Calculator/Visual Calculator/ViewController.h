//
//  ViewController.h
//  Visual Calculator
//
//  Created by Luke Clayton on 21/01/2016.
//  Copyright © 2016 Luke Clayton. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    
    IBOutlet UILabel *calculatorDisplay;
}

-(IBAction)numPadOne;
-(IBAction)numPadTwo;
-(IBAction)numPadThree;
-(IBAction)numPadFour;
-(IBAction)numPadFive;
-(IBAction)numPadSix;
-(IBAction)numPadSeven;
-(IBAction)numPadEight;
-(IBAction)numPadNine;
-(IBAction)numPadZero;
-(IBAction)decimalPoint;
-(IBAction)add;
-(IBAction)subtract;
-(IBAction)multiply;
-(IBAction)divide;
-(IBAction)calculate;
-(IBAction)clear;
@end


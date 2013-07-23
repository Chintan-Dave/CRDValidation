//
//  ViewController.m
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize txtEmail,txtNumber, txtInteger, txtAlphaNoSpace, txtAlphaWithSpace;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnValidateEmail:(UIButton *)sender
{
    [txtEmail validate:CRDValidationTypeEmail showRedRect:YES getFocus:YES alertMessage:@"Invalid Email."];
}

- (IBAction)btnValidateNumber:(UIButton *)sender
{
    [txtNumber validate:CRDValidationTypeNumber showRedRect:YES getFocus:YES alertMessage:@"Invalid Number."];
}

- (IBAction)txtValidateInteger:(UIButton *)sender
{
    [txtInteger validate:CRDValidationTypeInteger showRedRect:YES getFocus:YES alertMessage:@"Not An Integer Number."];
}

- (IBAction)btnAlphaNospaceValidateTap:(UIButton *)sender
{
    [txtAlphaNoSpace validate:CRDValidationTypeAlphaNoSpace showRedRect:YES getFocus:YES alertMessage:@"Invalid Alpha String."];
}

- (IBAction)txtAlphaWithSpaceValidateTap:(UIButton *)sender
{
    [txtAlphaWithSpace validate:CRDValidationTypeAlphaWithSpace showRedRect:YES getFocus:YES alertMessage:@"Invalid Alpha String."];
}

@end

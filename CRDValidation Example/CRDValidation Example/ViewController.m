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
@synthesize txtEmail,txtNumber, txtInteger, txtAlphaNoSpace, txtAlphaWithSpace, txtLengthStr, txtMaxLength, txtMinLength;

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
    if([CRDValidation validateNumber:txtNumber.text isRequire:YES] == CRDValidationResultValid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}

- (IBAction)txtValidateInteger:(UIButton *)sender
{
    if([CRDValidation validateInteger:txtInteger.text isRequire:YES] == CRDValidationResultValid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}

- (IBAction)btnAlphaNospaceValidateTap:(UIButton *)sender
{
    if([CRDValidation validateAlphaNospace:txtAlphaNoSpace.text isRequire:YES] == CRDValidationResultValid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}

- (IBAction)txtAlphaWithSpaceValidateTap:(UIButton *)sender
{
    if([CRDValidation validateAlphaWithspace:txtAlphaWithSpace.text isRequire:YES] == CRDValidationResultValid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}

- (IBAction)btnValidateLength:(UIButton *)sender
{
    if([CRDValidation validateLength:txtLengthStr.text min:[txtMinLength.text integerValue] max:[txtMaxLength.text integerValue] isRequire:YES] == CRDValidationResultValid)
    {
        [sender setImage:[UIImage imageNamed:@"valid.png"] forState:UIControlStateNormal];
    }
    else
    {
        [sender setImage:[UIImage imageNamed:@"invalid.png"] forState:UIControlStateNormal];
    }
}
@end

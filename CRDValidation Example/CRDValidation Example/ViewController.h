//
//  ViewController.h
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRDValidation.h"

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITextField *txtEmail;
@property (strong, nonatomic) IBOutlet UITextField *txtNumber;
@property (strong, nonatomic) IBOutlet UITextField *txtInteger;
@property (strong, nonatomic) IBOutlet UITextField *txtAlphaNoSpace;
@property (strong, nonatomic) IBOutlet UITextField *txtAlphaWithSpace;
@property (strong, nonatomic) IBOutlet UITextField *txtLengthStr;
@property (strong, nonatomic) IBOutlet UITextField *txtMinLength;
@property (strong, nonatomic) IBOutlet UITextField *txtMaxLength;

- (IBAction)btnValidateEmail:(UIButton *)sender;
- (IBAction)btnValidateNumber:(UIButton *)sender;
- (IBAction)txtValidateInteger:(UIButton *)sender;
- (IBAction)btnAlphaNospaceValidateTap:(UIButton *)sender;
- (IBAction)txtAlphaWithSpaceValidateTap:(UIButton *)sender;
- (IBAction)btnValidateLength:(UIButton *)sender;

@end

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
- (IBAction)btnValidateEmail:(UIButton *)sender;
- (IBAction)btnValidateNumber:(UIButton *)sender;

@end

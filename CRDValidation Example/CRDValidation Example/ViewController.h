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
- (IBAction)btnValidateEmail:(UIButton *)sender;

@end

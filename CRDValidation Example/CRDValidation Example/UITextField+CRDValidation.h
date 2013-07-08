//
//  UITextField+CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 08/07/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRDValidation.h"

@interface UITextField (CRDValidation)

@property enum CRDValidationType validationType;

- (enum CRDValidationResult) validate;
@end

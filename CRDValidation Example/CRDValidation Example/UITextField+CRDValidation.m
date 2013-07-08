//
//  UITextField+CRDValidation.m
//  CRDValidation Example
//
//  Created by chintan on 08/07/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "UITextField+CRDValidation.h"

@implementation UITextField (CRDValidation)

@dynamic validationType;

- (enum CRDValidationResult) validate;
{
    @try
    {
        switch (self.validationType)
        {
            case CRDValidationTypeBlank:
                return [CRDValidation isBlank:self.text];
                
            case CRDValidationTypeEmail:
                return [CRDValidation validateEmail:self.text isRequire:NO];
            
            case CRDValidationTypeNumber:
                return [CRDValidation validateNumber:self.text isRequire:NO];
            
            case CRDValidationTypeInteger:
                return [CRDValidation validateInteger:self.text isRequire:NO];
            
            case CRDValidationTypeAlphaNoSpace:
                return [CRDValidation validateAlphaNospace:self.text isRequire:NO];
            
            case CRDValidationTypeAlphaWithSpace:
                return [CRDValidation validateAlphaWithspace:self.text isRequire:NO];
            
            case CRDValidationTypeAlphaNumericNospace:
                return [CRDValidation validateAlphaNumericNospace:self.text isRequire:NO];
            
            case CRDValidationTypeAlphaNumericWithspace:
                return [CRDValidation validateAlphaNumericWithspace:self.text isRequire:NO];
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
@end

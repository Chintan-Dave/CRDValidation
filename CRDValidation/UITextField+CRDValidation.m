//
//  UITextField+CRDValidation.m
//  CRDValidation Example
//
//  Created by chintan on 08/07/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "UITextField+CRDValidation.h"

NSString * const kCRDValidationType= @"kCRDValidationType";

@implementation UITextField (CRDValidation)

- (enum CRDValidationResult) validate:(CRDValidationType)type
{
    @try
    {
        enum CRDValidationResult result;
        
        switch (type)
        {
            case CRDValidationTypeBlank:
                result = [CRDValidation isBlank:self.text];
                break;
                
            case CRDValidationTypeEmail:
                result = [CRDValidation validateEmail:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeNumber:
                result = [CRDValidation validateNumber:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeInteger:
                result = [CRDValidation validateInteger:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeAlphaNoSpace:
                result = [CRDValidation validateAlphaNospace:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeAlphaWithSpace:
                result = [CRDValidation validateAlphaWithspace:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeAlphaNumericNospace:
                result = [CRDValidation validateAlphaNumericNospace:self.text isRequire:NO];
                break;
                
            case CRDValidationTypeAlphaNumericWithspace:
                result = [CRDValidation validateAlphaNumericWithspace:self.text isRequire:NO];
                break;
            case CRDValidationTypeRegExp:
                break;
        }
        
        return result;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}

- (enum CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect
{
    CRDValidationResult result = [self validate:type];
    
    if(result != CRDValidationResultValid && errorRect)
    {
        [self.layer setBorderWidth:2];
        [self.layer setBorderColor:[UIColor redColor].CGColor];
        [self setClipsToBounds:YES];
    }
    else
    {
        [self.layer setBorderWidth:0];
        [self.layer setBorderColor:[UIColor clearColor].CGColor];
        [self setClipsToBounds:NO];
    }
    
    return result;
}

- (CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError
{
    CRDValidationResult result = [self validate:type showRedRect:errorRect];
    
    if(result != CRDValidationResultValid && focusOnError)
    {
        [self becomeFirstResponder];
    }
    
    return result;
}

- (CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError alertMessage:(NSString *)message;
{
    CRDValidationResult result = [self validate:type showRedRect:errorRect getFocus:focusOnError];

    if(result != CRDValidationResultValid && message)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Validation"
                                                        message:message
                                                       delegate:Nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        
        [alert show];
    }
    
    return result;
}

- (CRDValidationResult) validateWithRegExp:(NSString *)regExp
{
    return [CRDValidation validateString:self.text againstRegExp:regExp];
}
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect
{
    CRDValidationResult result = [CRDValidation validateString:self.text againstRegExp:regExp];
    
    if(result != CRDValidationResultValid && errorRect)
    {
        [self.layer setBorderWidth:2];
        [self.layer setBorderColor:[UIColor redColor].CGColor];
        [self setClipsToBounds:YES];
    }
    else
    {
        [self.layer setBorderWidth:0];
        [self.layer setBorderColor:[UIColor clearColor].CGColor];
        [self setClipsToBounds:NO];
    }
    
    return result;
}
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError
{
    CRDValidationResult result = [self validateWithRegExp:regExp showRedRect:errorRect];
    
    if(result != CRDValidationResultValid && focusOnError)
    {
        [self becomeFirstResponder];
    }
    
    return result;
}
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError alertMessage:(NSString *)message
{
    CRDValidationResult result = [self validateWithRegExp:regExp showRedRect:errorRect getFocus:focusOnError];
    
    if(result != CRDValidationResultValid && message)
    {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Validation"
                                                        message:message
                                                       delegate:Nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles: nil];
        
        [alert show];
    }
    
    return result;
}
@end

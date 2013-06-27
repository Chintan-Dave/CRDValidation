//
//  CRDValidation.m
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "CRDValidation.h"

@implementation CRDValidation

+ (enum validationResult) isBlank:(NSString *)string;
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(string == Nil || [string isEqualToString:@""])
        {
            return ValidationResult_Blank;
        }
        
        return ValidationResult_Valid;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateEmail:(NSString *)email isRequire:(BOOL)require
{
    @try
    {
        email = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (email == Nil || [email isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        else
        {
            NSString *emailRegex = @"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}";
			
            return [self validateString:email againstRegExp:emailRegex];
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateNumber:(NSString *)number isRequire:(BOOL)require
{
    @try
    {
        number = [number stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (number == Nil || [number isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        NSNumber *isNumber = [formatter numberFromString:number];
    
        if(isNumber)
        {
            return ValidationResult_Valid;
        }
        else
        {
            return ValidationResult_Invalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateInteger:(NSString *)number isRequire:(BOOL)require
{
    @try
    {
        number = [number stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (number == Nil || [number isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        
        NSScanner* scan = [NSScanner scannerWithString:number];
        
        int val;
        
        if([scan scanInt:&val] && [scan isAtEnd])
        {
            return ValidationResult_Valid;
        }
        else
        {
            return ValidationResult_Invalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateAlphaNospace:(NSString *)string isRequire:(BOOL)require;
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        
        NSString *alphaRegex = @"[A-Za-z]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateAlphaWithspace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        
        NSString *alphaRegex = @"[A-Za-z ]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateAlphaNumericNospace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateAlphaNumericWithspace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum validationResult) validateLength:(NSString *)string min:(NSUInteger)min max:(NSUInteger)max isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return ValidationResult_Blank;
        }
        
        if (string.length < min)
        {
            return ValidationResult_lessLength;
        }
        else if ( string.length > max)
        {
            return ValidationResult_moreLength;
        }
        
        return ValidationResult_Valid;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}

+ (enum validationResult) validateString:(NSString *)string againstRegExp:(NSString *)regExp
{
    @try
    {
        NSPredicate *regExpTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regExp];
        
        if([regExpTest evaluateWithObject:string])
        {
            return ValidationResult_Valid;
        }
        else
        {
            return ValidationResult_Invalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
@end

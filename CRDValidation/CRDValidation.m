//
//  CRDValidation.m
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import "CRDValidation.h"

@implementation CRDValidation

+ (enum CRDValidationResult) isBlank:(NSString *)string;
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(string == Nil || [string isEqualToString:@""])
        {
            return CRDValidationResultBlank;
        }
        
        return CRDValidationResultValid;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateEmail:(NSString *)email isRequire:(BOOL)require
{
    @try
    {
        email = [email stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (email == Nil || [email isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
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
+ (enum CRDValidationResult) validateNumber:(NSString *)number isRequire:(BOOL)require
{
    @try
    {
        number = [number stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (number == Nil || [number isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
        NSNumber *isNumber = [formatter numberFromString:number];
    
        if(isNumber)
        {
            return CRDValidationResultValid;
        }
        else
        {
            return CRDValidationResultInvalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateInteger:(NSString *)number isRequire:(BOOL)require
{
    @try
    {
        number = [number stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (number == Nil || [number isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSScanner* scan = [NSScanner scannerWithString:number];
        
        int val;
        
        if([scan scanInt:&val] && [scan isAtEnd])
        {
            return CRDValidationResultValid;
        }
        else
        {
            return CRDValidationResultInvalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateAlphaNospace:(NSString *)string isRequire:(BOOL)require;
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSString *alphaRegex = @"[A-Za-z]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateAlphaWithspace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSString *alphaRegex = @"[A-Za-z ]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateAlphaNumericNospace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSString *alphaRegex = @"[A-Za-z0-9]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateAlphaNumericWithspace:(NSString *)string isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        NSString *alphaRegex = @"[A-Za-z0-9 ]+";
        
        return [self validateString:string againstRegExp:alphaRegex];
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateLength:(NSString *)string min:(NSUInteger)min max:(NSUInteger)max isRequire:(BOOL)require
{
    @try
    {
        string = [string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
        
        if(require && (string == Nil || [string isEqualToString:@""]))
        {
            return CRDValidationResultBlank;
        }
        
        if (string.length < min)
        {
            return CRDValidationResultLessLength;
        }
        else if ( string.length > max)
        {
            return CRDValidationResultMoreLength;
        }
        
        return CRDValidationResultValid;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}

+ (enum CRDValidationResult) validateString:(NSString *)string againstRegExp:(NSString *)regExp
{
    @try
    {
        NSPredicate *regExpTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", regExp];
        
        if([regExpTest evaluateWithObject:string])
        {
            return CRDValidationResultValid;
        }
        else
        {
            return CRDValidationResultInvalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}

+ (enum CRDValidationResult) validateDate:(NSDate *)date isAfterDate:(NSDate *)pastDate
{
    @try
    {
        if([date compare:pastDate] == NSOrderedDescending)
        {
            return CRDValidationResultValid;
        }
        else
        {
            return CRDValidationResultInvalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateDate:(NSDate *)date isBeforeDate:(NSDate *)futureDate
{
    @try
    {
        if([date compare:futureDate] == NSOrderedAscending)
        {
            return CRDValidationResultValid;
        }
        else
        {
            return CRDValidationResultInvalid;
        }
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
+ (enum CRDValidationResult) validateDate:(NSDate *)date isBetweenDate:(NSDate *)firstDate andDate:(NSDate *)secondDate
{
    @try
    {
        if ([date compare:firstDate] == NSOrderedAscending)
        {
            return CRDValidationResultInvalid;
        }
        
        if ([date compare:secondDate] == NSOrderedDescending)
        {
            return CRDValidationResultInvalid;
        }
        
        return CRDValidationResultValid;
    }
    @catch (NSException *exception)
    {
        NSLog(@"Exception : %@", exception);
    }
}
@end

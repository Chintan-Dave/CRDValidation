//
//  CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <Foundation/Foundation.h>

enum CRDValidationType
{
    CRDValidationTypeBlank,
    CRDValidationTypeEmail,
    CRDValidationTypeNumber,
    CRDValidationTypeInteger,
    CRDValidationTypeAlphaNoSpace,
    CRDValidationTypeAlphaWithSpace,
    CRDValidationTypeAlphaNumericNospace,
    CRDValidationTypeAlphaNumericWithspace
};

enum CRDValidationResult
{
    CRDValidationResultValid,
    CRDValidationResultInvalid,
    CRDValidationResultBlank,
    CRDValidationResultNotAlpha,
    CRDValidationResultNotNumber,
    CRDValidationResultNotInteger,
    CRDValidationResultLessLength,
    CRDValidationResultMoreLength
};

@interface CRDValidation : NSObject

+ (enum CRDValidationResult) isBlank:(NSString *)string;

+ (enum CRDValidationResult) validateEmail:(NSString *)email isRequire:(BOOL)require;

+ (enum CRDValidationResult) validateNumber:(NSString *)number isRequire:(BOOL)require;
+ (enum CRDValidationResult) validateInteger:(NSString *)number isRequire:(BOOL)require;

+ (enum CRDValidationResult) validateAlphaNospace:(NSString *)string isRequire:(BOOL)require;
+ (enum CRDValidationResult) validateAlphaWithspace:(NSString *)string isRequire:(BOOL)require;
+ (enum CRDValidationResult) validateAlphaNumericNospace:(NSString *)string isRequire:(BOOL)require;
+ (enum CRDValidationResult) validateAlphaNumericWithspace:(NSString *)string isRequire:(BOOL)require;

+ (enum CRDValidationResult) validateLength:(NSString *)string min:(NSUInteger)min max:(NSUInteger)max isRequire:(BOOL)require;

+ (enum CRDValidationResult) validateString:(NSString *)string againstRegExp:(NSString *)regExp;

+ (enum CRDValidationResult) validateDate:(NSDate *)date isAfterDate:(NSDate *)pastDate;
+ (enum CRDValidationResult) validateDate:(NSDate *)date isBeforeDate:(NSDate *)futureDate;
+ (enum CRDValidationResult) validateDate:(NSDate *)date isBetweenDate:(NSDate *)firstDate andDate:(NSDate *)secondDate;
@end

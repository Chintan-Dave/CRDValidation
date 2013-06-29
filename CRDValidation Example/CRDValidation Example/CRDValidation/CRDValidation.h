//
//  CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <Foundation/Foundation.h>

enum CRDValidationResult {
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
@end

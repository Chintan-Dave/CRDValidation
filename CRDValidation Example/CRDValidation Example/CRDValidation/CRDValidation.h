//
//  CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <Foundation/Foundation.h>

enum validationType {
                        Validation_Blank,
                        Validation_Email,
                        Validation_Alpha,
                        Validation_Number,
                        Validation_Integer
                    };

enum validationResult {
                        ValidationResult_Valid,
                        ValidationResult_Invalid,
                        ValidationResult_Blank,
                        ValidationResult_NotAlpha,
                        ValidationResult_NotNumber,
                        ValidationResult_NotInteger,
                        ValidationResult_lessLength,
                        ValidationResult_moreLength
                      };

@interface CRDValidation : NSObject

+ (enum validationResult) isBlank:(NSString *)string;

+ (enum validationResult) validateEmail:(NSString *)email isRequire:(BOOL)require;

+ (enum validationResult) validateNumber:(NSString *)number isRequire:(BOOL)require;
+ (enum validationResult) validateInteger:(NSString *)number isRequire:(BOOL)require;

+ (enum validationResult) validateAlphaNospace:(NSString *)string isRequire:(BOOL)require;
+ (enum validationResult) validateAlphaWithspace:(NSString *)string isRequire:(BOOL)require;
+ (enum validationResult) validateAlphaNumericNospace:(NSString *)string isRequire:(BOOL)require;
+ (enum validationResult) validateAlphaNumericWithspace:(NSString *)string isRequire:(BOOL)require;

+ (enum validationResult) validateLength:(NSString *)string min:(NSUInteger)min max:(NSUInteger)max isRequire:(BOOL)require;

+ (enum validationResult) validateString:(NSString *)string againstRegExp:(NSString *)regExp;
@end

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
                        ValidationResult_NotInteger
                      };

@interface CRDValidation : NSObject

+ (enum validationResult) validateEmail:(NSString *)email isRequire:(BOOL)require;
@end

//
//  CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 26/06/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CWLSynthesizeSingleton.h"

enum validationType {Validation_Blank, Validation_Email, Validation_Alpha, Validation_Number, Validation_Integer};
enum validationResult {ValidationResult_Valid, ValidationResult_Invalid, ValidationResult_Blank};

@interface CRDValidation : NSObject
CWL_DECLARE_SINGLETON_FOR_CLASS(CRDValidation);
@end

//
//  UITextField+CRDValidation.h
//  CRDValidation Example
//
//  Created by chintan on 08/07/13.
//  Copyright (c) 2013 ZWT. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CRDValidation.h"
#import <QuartzCore/QuartzCore.h>

typedef enum CRDValidationType CRDValidationType;
typedef enum CRDValidationResult CRDValidationResult;

@interface UITextField (CRDValidation)

- (CRDValidationResult) validate:(CRDValidationType)type;
- (CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect;
- (CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError;
- (CRDValidationResult) validate:(CRDValidationType)type showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError alertMessage:(NSString *)message;

- (CRDValidationResult) validateWithRegExp:(NSString *)regExp;
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect;
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError;
- (CRDValidationResult) validateWithRegExp:(NSString *)regExp showRedRect:(BOOL)errorRect getFocus:(BOOL)focusOnError alertMessage:(NSString *)message;
@end

CRDValidation
=============

General Purpos Objective-C Validation Library.

<h3>How To Use It:</h3>

Add This two File In Your Project:

<UL>
  <LI>CRDValidation.h
  <LI>CRDValidation.m
</Ul>

Imclude This In Your File Where You Want To Perform Validation

  <code>#import "CRDValidation.h"</code>
  
Use Function Accouding To Your Requirement:

<B>Some Example:</B>

  <U>Email Validation</U>
  <CODE>[CRDValidation validateEmail:txtEmail.text isRequire:YES]</CODE>
  
  This function return one of the following value:
  <UL>
    <LI>ValidationResult_Blank   : If Email is blank (or NULL) after padding
    <LI>ValidationResult_Invalid : If Email is Invalid
    <LI>ValidationResult_Valid   : If Email Is valid
  </UL>

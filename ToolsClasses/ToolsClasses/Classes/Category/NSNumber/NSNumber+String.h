//
//  NSNumber+String.h
//  KndCRMv2
//
//  Created by ZQ on 21/10/2016.
//  Copyright © 2016 KingNode. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSNumber (String)

- (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding;
- (BOOL)containsString:( NSString * _Nonnull )str;
- (BOOL)getBytes:(nullable void *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(nullable NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(nullable NSRangePointer)leftover;
- (BOOL)getCString:(char * _Nonnull )buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding;
- (BOOL)hasPrefix:( NSString * _Nonnull )str;
- (BOOL)hasSuffix:( NSString * _Nonnull )str;
- (BOOL)isEqualToString:( NSString * _Nonnull )aString;
- (BOOL)localizedCaseInsensitiveContainsString:( NSString * _Nonnull )str;
- (BOOL)localizedStandardContainsString:( NSString * _Nonnull )str;
- (BOOL)writeToFile:( NSString * _Nonnull )path atomically:(BOOL)useAuxiliaryFile;
- (BOOL)writeToFile:( NSString * _Nonnull )path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError * _Nonnull * _Nonnull )error;
- (BOOL)writeToURL:(NSURL * _Nonnull )url atomically:(BOOL)atomically;
- (BOOL)writeToURL:(NSURL * _Nonnull )url atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError * _Nonnull * _Nonnull )error;
- (id _Nonnull )propertyList;
- (NSArray<NSString *> * _Nonnull )componentsSeparatedByCharactersInSet:(NSCharacterSet * _Nonnull )separator;
- (NSArray<NSString *> * _Nonnull )componentsSeparatedByString:( NSString * _Nonnull )separator;
- (NSComparisonResult)caseInsensitiveCompare:( NSString * _Nonnull )string;
- (NSComparisonResult)compare:( NSString * _Nonnull )string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare locale:(nullable id)locale;
- (NSComparisonResult)compare:( NSString * _Nonnull )string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare;
- (NSComparisonResult)compare:( NSString * _Nonnull )string options:(NSStringCompareOptions)mask;
- (NSComparisonResult)compare:( NSString * _Nonnull )string;
- (NSComparisonResult)localizedCaseInsensitiveCompare:( NSString * _Nonnull )string;
- (NSComparisonResult)localizedCompare:( NSString * _Nonnull )string;
- (NSComparisonResult)localizedStandardCompare:( NSString * _Nonnull )string;
- (NSRange)lineRangeForRange:(NSRange)range;
- (NSRange)localizedStandardRangeOfString:( NSString * _Nonnull )str;
- (NSRange)paragraphRangeForRange:(NSRange)range;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet * _Nonnull )searchSet options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet * _Nonnull )searchSet options:(NSStringCompareOptions)mask;
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet * _Nonnull )searchSet;
- (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index;
- (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range;
- (NSRange)rangeOfString:( NSString * _Nonnull )searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch locale:(nullable NSLocale *)locale;
- (NSRange)rangeOfString:( NSString * _Nonnull )searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch;
- (NSRange)rangeOfString:( NSString * _Nonnull )searchString options:(NSStringCompareOptions)mask;
- (NSRange)rangeOfString:( NSString * _Nonnull )searchString;
- ( NSString * _Nonnull )capitalizedStringWithLocale:(nullable NSLocale *)locale;
- ( NSString * _Nonnull )commonPrefixWithString:( NSString * _Nonnull )str options:(NSStringCompareOptions)mask;
- ( NSString * _Nonnull )lowercaseStringWithLocale:(nullable NSLocale *)locale;
- ( NSString * _Nonnull )stringByAppendingFormat:( NSString * _Nonnull )format, ...;
- ( NSString * _Nonnull )stringByAppendingString:( NSString * _Nonnull )aString;
- ( NSString * _Nonnull )stringByFoldingWithOptions:(NSStringCompareOptions)options locale:(nullable NSLocale *)locale;
- ( NSString * _Nonnull )stringByPaddingToLength:(NSUInteger)newLength withString:( NSString * _Nonnull )padString startingAtIndex:(NSUInteger)padIndex;
- ( NSString * _Nonnull )stringByReplacingCharactersInRange:(NSRange)range withString:( NSString * _Nonnull )replacement;
- ( NSString * _Nonnull )stringByReplacingOccurrencesOfString:( NSString * _Nonnull )target withString:( NSString * _Nonnull )replacement;
- ( NSString * _Nonnull )stringByReplacingOccurrencesOfString:( NSString * _Nonnull )target withString:( NSString * _Nonnull )replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange;
- ( NSString * _Nonnull )stringByTrimmingCharactersInSet:(NSCharacterSet * _Nonnull )set;
- ( NSString * _Nonnull )substringFromIndex:(NSUInteger)from;
- ( NSString * _Nonnull )substringToIndex:(NSUInteger)to;
- ( NSString * _Nonnull )substringWithRange:(NSRange)range;
- ( NSString * _Nonnull )uppercaseStringWithLocale:(nullable NSLocale *)locale;
- (NSUInteger)cStringLength;
- (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc;
- (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc;
- (nullable const char *)cString;
- (nullable const char *)cStringUsingEncoding:(NSStringEncoding)encoding;
- (nullable const char *)lossyCString;
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy;
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding;
- (nullable NSDictionary *)propertyListFromStringsFileFormat;
//Xcode 7 不支持
//- (nullable NSString *)stringByApplyingTransform:(NSStringTransform _Nonnull )transform reverse:(BOOL)reverse;
- (unichar)characterAtIndex:(NSUInteger)index;
- (void)enumerateLinesUsingBlock:(void (  ^ _Nonnull )(NSString * _Nonnull line, BOOL * _Nonnull stop))block;
- (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void (^ _Nonnull )(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL * _Nonnull stop))block;
- (void)getCharacters:(unichar * _Nonnull )buffer range:(NSRange)range;
- (void)getCharacters:(unichar * _Nonnull )buffer;
- (void)getCString:(char * _Nonnull )bytes;
- (void)getCString:(char * _Nonnull )bytes maxLength:(NSUInteger)maxLength;
- (void)getCString:(char * _Nonnull )bytes maxLength:(NSUInteger)maxLength range:(NSRange)aRange remainingRange:(nullable NSRangePointer)leftoverRange;
- (void)getLineStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)lineEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range;
- (void)getParagraphStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)parEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range;
-(NSString * _Nullable )capitalizedString;
-(const char * _Nullable )UTF8String;
-(NSString * _Nullable )decomposedStringWithCanonicalMapping;
-(NSString * _Nullable )decomposedStringWithCompatibilityMapping;
-(NSString * _Nullable )description;
-(NSString * _Nullable )localizedCapitalizedString;
-(NSString * _Nullable )localizedLowercaseString;
-(NSString * _Nullable )localizedUppercaseString;
-(NSString * _Nullable )lowercaseString;
-(NSString * _Nullable )precomposedStringWithCanonicalMapping;
-(NSString * _Nullable )precomposedStringWithCompatibilityMapping;
-(NSString * _Nullable )uppercaseString;
-(BOOL)boolValue;
-(double)doubleValue;
-(float)floatValue;
-(int)intValue;
-(long long)longLongValue;
-(NSInteger)integerValue;
-(NSStringEncoding)fastestEncoding;
-(NSStringEncoding)smallestEncoding;
-(NSUInteger)hash;
-(NSUInteger)length;

@end

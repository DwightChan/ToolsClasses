//
//  NSNumber+String.m
//  KndCRMv2
//
//  Created by ZQ on 21/10/2016.
//  Copyright © 2016 KingNode. All rights reserved.
//

#import "NSNumber+String.h"

@implementation NSNumber (String)

- (BOOL)canBeConvertedToEncoding:(NSStringEncoding)encoding{
    return [[NSString stringWithFormat:@"%@",self] canBeConvertedToEncoding:encoding];
}
- (BOOL)containsString:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] containsString:str];
}
- (BOOL)getBytes:(nullable void *)buffer maxLength:(NSUInteger)maxBufferCount usedLength:(nullable NSUInteger *)usedBufferCount encoding:(NSStringEncoding)encoding options:(NSStringEncodingConversionOptions)options range:(NSRange)range remainingRange:(nullable NSRangePointer)leftover{
    return [[NSString stringWithFormat:@"%@",self] getBytes:buffer maxLength:maxBufferCount usedLength:usedBufferCount encoding:encoding options:options range:range remainingRange:leftover];
}
- (BOOL)getCString:(char *)buffer maxLength:(NSUInteger)maxBufferCount encoding:(NSStringEncoding)encoding{
    return [[NSString stringWithFormat:@"%@",self] getCString:buffer maxLength:maxBufferCount encoding:encoding];
}
- (BOOL)hasPrefix:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] hasPrefix:str];
}
- (BOOL)hasSuffix:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] hasSuffix:str];
}
- (BOOL)isEqualToString:(NSString *)aString{
    return [[NSString stringWithFormat:@"%@",self] isEqualToString:aString];
}
- (BOOL)localizedCaseInsensitiveContainsString:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] localizedCaseInsensitiveContainsString:str];
}
- (BOOL)localizedStandardContainsString:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] localizedStandardContainsString:str];
}
- (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile{
    return [[NSString stringWithFormat:@"%@",self] writeToFile:path atomically:useAuxiliaryFile];
}
- (BOOL)writeToFile:(NSString *)path atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error{
    return [[NSString stringWithFormat:@"%@",self] writeToFile:path atomically:useAuxiliaryFile encoding:enc error:error];
}
- (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)atomically{
    return [[NSString stringWithFormat:@"%@",self] writeToURL:url atomically:atomically];
}
- (BOOL)writeToURL:(NSURL *)url atomically:(BOOL)useAuxiliaryFile encoding:(NSStringEncoding)enc error:(NSError **)error{
    return [[NSString stringWithFormat:@"%@",self] writeToURL:url atomically:useAuxiliaryFile encoding:enc error:error];
}
- (id)propertyList{
    return [[NSString stringWithFormat:@"%@",self] propertyList];
}
- (NSArray<NSString *> *)componentsSeparatedByCharactersInSet:(NSCharacterSet *)separator{
    return [[NSString stringWithFormat:@"%@",self] componentsSeparatedByCharactersInSet:separator];
}
- (NSArray<NSString *> *)componentsSeparatedByString:(NSString *)separator{
    return [[NSString stringWithFormat:@"%@",self] componentsSeparatedByString:separator];
}
- (NSComparisonResult)caseInsensitiveCompare:(NSString *)string{
    return [[NSString stringWithFormat:@"%@",self] caseInsensitiveCompare:string];
}
//如果是比较，需要同时把参数 string 一并强转为 NSString 类，否则会出错
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare locale:(nullable id)locale{
    return [[NSString stringWithFormat:@"%@",self] compare:[NSString stringWithFormat:@"%@",string] options:mask range:rangeOfReceiverToCompare locale:locale];
}
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToCompare{
    return [[NSString stringWithFormat:@"%@",self] compare:[NSString stringWithFormat:@"%@",string] options:mask range:rangeOfReceiverToCompare];
}
- (NSComparisonResult)compare:(NSString *)string options:(NSStringCompareOptions)mask{
    return [[NSString stringWithFormat:@"%@",self] compare:[NSString stringWithFormat:@"%@",string] options:mask];
}
- (NSComparisonResult)compare:(NSString *)string{
    return [[NSString stringWithFormat:@"%@",self] compare:[NSString stringWithFormat:@"%@",string]];
}
- (NSComparisonResult)localizedCaseInsensitiveCompare:(NSString *)string{
    return [[NSString stringWithFormat:@"%@",self] localizedCaseInsensitiveCompare:string];
}
- (NSComparisonResult)localizedCompare:(NSString *)string{
    return [[NSString stringWithFormat:@"%@",self] localizedCompare:string];
}
- (NSComparisonResult)localizedStandardCompare:(NSString *)string{
    return [[NSString stringWithFormat:@"%@",self] localizedStandardCompare:string];
}
- (NSRange)lineRangeForRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] lineRangeForRange:range];
}
- (NSRange)localizedStandardRangeOfString:(NSString *)str{
    return [[NSString stringWithFormat:@"%@",self] localizedStandardRangeOfString:str];
}
- (NSRange)paragraphRangeForRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] paragraphRangeForRange:range];
}
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch{
    return [[NSString stringWithFormat:@"%@",self] rangeOfCharacterFromSet:searchSet options:mask range:rangeOfReceiverToSearch];
}
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet options:(NSStringCompareOptions)mask{
    return [[NSString stringWithFormat:@"%@",self] rangeOfCharacterFromSet:searchSet options:mask];
}
- (NSRange)rangeOfCharacterFromSet:(NSCharacterSet *)searchSet{
    return [[NSString stringWithFormat:@"%@",self] rangeOfCharacterFromSet:searchSet];
}
- (NSRange)rangeOfComposedCharacterSequenceAtIndex:(NSUInteger)index{
    return [[NSString stringWithFormat:@"%@",self] rangeOfComposedCharacterSequenceAtIndex:index];
}
- (NSRange)rangeOfComposedCharacterSequencesForRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] rangeOfComposedCharacterSequencesForRange:range];
}
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch locale:(nullable NSLocale *)locale{
    return [[NSString stringWithFormat:@"%@",self] rangeOfString:searchString options:mask range:rangeOfReceiverToSearch locale:locale];
}
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask range:(NSRange)rangeOfReceiverToSearch{
    return [[NSString stringWithFormat:@"%@",self] rangeOfString:searchString options:mask range:rangeOfReceiverToSearch];
}
- (NSRange)rangeOfString:(NSString *)searchString options:(NSStringCompareOptions)mask{
    return [[NSString stringWithFormat:@"%@",self] rangeOfString:searchString options:mask];
}
- (NSRange)rangeOfString:(NSString *)searchString{
    return [[NSString stringWithFormat:@"%@",self] rangeOfString:searchString];
}
- (NSString *)capitalizedStringWithLocale:(nullable NSLocale *)locale{
    return [[NSString stringWithFormat:@"%@",self] capitalizedStringWithLocale:locale];
}
- (NSString *)commonPrefixWithString:(NSString *)str options:(NSStringCompareOptions)mask{
    return [[NSString stringWithFormat:@"%@",self] commonPrefixWithString:str options:mask];
}
- (NSString *)lowercaseStringWithLocale:(nullable NSLocale *)locale{
    return [[NSString stringWithFormat:@"%@",self] lowercaseStringWithLocale:locale];
}
- (NSString *)stringByAppendingFormat:(NSString *)format, ...{
    return [[NSString stringWithFormat:@"%@",self] stringByAppendingFormat:@"%@", format];
}
- (NSString *)stringByAppendingString:(NSString *)aString{
    return [[NSString stringWithFormat:@"%@",self] stringByAppendingString:aString];
}
- (NSString *)stringByFoldingWithOptions:(NSStringCompareOptions)options locale:locale{
    return [[NSString stringWithFormat:@"%@",self] stringByFoldingWithOptions:options locale:locale];
}
- (NSString *)stringByPaddingToLength:(NSUInteger)newLength withString:(NSString *)padString startingAtIndex:(NSUInteger)padIndex{
    return [[NSString stringWithFormat:@"%@",self] stringByPaddingToLength:newLength withString:padString startingAtIndex:padIndex];
}
- (NSString *)stringByReplacingCharactersInRange:(NSRange)range withString:(NSString *)replacement{
    return [[NSString stringWithFormat:@"%@",self] stringByReplacingCharactersInRange:range withString:replacement];
}
- (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement{
    return [[NSString stringWithFormat:@"%@",self] stringByReplacingOccurrencesOfString:target withString:replacement];
}
- (NSString *)stringByReplacingOccurrencesOfString:(NSString *)target withString:(NSString *)replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange{
    return [[NSString stringWithFormat:@"%@",self] stringByReplacingOccurrencesOfString:target withString:replacement options:(NSStringCompareOptions)options range:(NSRange)searchRange];
}
- (NSString *)stringByTrimmingCharactersInSet:(NSCharacterSet *)set{
    return [[NSString stringWithFormat:@"%@",self] stringByTrimmingCharactersInSet:set];
}
- (NSString *)substringFromIndex:(NSUInteger)from{
    return [[NSString stringWithFormat:@"%@",self] substringFromIndex:from];
}
- (NSString *)substringToIndex:(NSUInteger)to{
    return [[NSString stringWithFormat:@"%@",self] substringToIndex:to];
}
- (NSString *)substringWithRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] substringWithRange:range];
}
- (NSString *)uppercaseStringWithLocale:(nullable NSLocale *)locale{
    return [[NSString stringWithFormat:@"%@",self] uppercaseStringWithLocale:locale];
}
- (NSUInteger)cStringLength{
    return [[NSString stringWithFormat:@"%@",self] cStringLength];
}
- (NSUInteger)lengthOfBytesUsingEncoding:(NSStringEncoding)enc{
    return [[NSString stringWithFormat:@"%@",self] lengthOfBytesUsingEncoding:enc];
}
- (NSUInteger)maximumLengthOfBytesUsingEncoding:(NSStringEncoding)enc{
    return [[NSString stringWithFormat:@"%@",self] maximumLengthOfBytesUsingEncoding:enc];
}
- (nullable const char *)cString{
    return [[NSString stringWithFormat:@"%@",self] cString];
}
- (nullable const char *)cStringUsingEncoding:(NSStringEncoding)encoding{
    return [[NSString stringWithFormat:@"%@",self] cStringUsingEncoding:encoding];
}
- (nullable const char *)lossyCString{
    return [[NSString stringWithFormat:@"%@",self] lossyCString];
}
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding allowLossyConversion:(BOOL)lossy{
    return [[NSString stringWithFormat:@"%@",self] dataUsingEncoding:encoding allowLossyConversion:lossy];
}
- (nullable NSData *)dataUsingEncoding:(NSStringEncoding)encoding{
    return [[NSString stringWithFormat:@"%@",self] dataUsingEncoding:encoding];
}
- (nullable NSDictionary *)propertyListFromStringsFileFormat{
    return [[NSString stringWithFormat:@"%@",self] propertyListFromStringsFileFormat];
}
//Xcode 7 不支持
//- (nullable NSString *)stringByApplyingTransform:(NSStringTransform)transform reverse:(BOOL)reverse{
//    return [[NSString stringWithFormat:@"%@",self] stringByApplyingTransform:transform reverse:reverse];
//}
- (unichar)characterAtIndex:(NSUInteger)index{
    return [[NSString stringWithFormat:@"%@",self] characterAtIndex:index];
}
- (void)enumerateLinesUsingBlock:(void (^)(NSString *line, BOOL *stop))block{
    return [[NSString stringWithFormat:@"%@",self] enumerateLinesUsingBlock:block];
}
- (void)enumerateSubstringsInRange:(NSRange)range options:(NSStringEnumerationOptions)opts usingBlock:(void (^)(NSString * _Nullable substring, NSRange substringRange, NSRange enclosingRange, BOOL *stop))block{
    return [[NSString stringWithFormat:@"%@",self] enumerateSubstringsInRange:range options:opts usingBlock:block];
}
- (void)getCharacters:(unichar *)buffer range:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] getCharacters:buffer range:range];
}
- (void)getCharacters:(unichar *)buffer{
    return [[NSString stringWithFormat:@"%@",self] getCharacters:buffer];
}
- (void)getCString:(char *)bytes{
    return [[NSString stringWithFormat:@"%@",self] getCString:bytes];
}
- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength{
    return [[NSString stringWithFormat:@"%@",self] getCString:bytes maxLength:maxLength];
}
- (void)getCString:(char *)bytes maxLength:(NSUInteger)maxLength range:(NSRange)aRange remainingRange:(nullable NSRangePointer)leftoverRange{
    return [[NSString stringWithFormat:@"%@",self] getCString:bytes maxLength:maxLength range:aRange remainingRange:leftoverRange];
}
- (void)getLineStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)lineEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] getLineStart:startPtr end:lineEndPtr contentsEnd:contentsEndPtr forRange:range];
}
- (void)getParagraphStart:(nullable NSUInteger *)startPtr end:(nullable NSUInteger *)parEndPtr contentsEnd:(nullable NSUInteger *)contentsEndPtr forRange:(NSRange)range{
    return [[NSString stringWithFormat:@"%@",self] getParagraphStart:startPtr end:parEndPtr contentsEnd:contentsEndPtr forRange:range];
}
-(NSString *)capitalizedString{
    return [[NSString stringWithFormat:@"%@",self] capitalizedString];
}
-(const char *)UTF8String{
    return [[NSString stringWithFormat:@"%@",self] UTF8String];
}
-(NSString *)decomposedStringWithCanonicalMapping{
    return [[NSString stringWithFormat:@"%@",self] decomposedStringWithCanonicalMapping];
}
-(NSString *)decomposedStringWithCompatibilityMapping{
    return [[NSString stringWithFormat:@"%@",self] decomposedStringWithCompatibilityMapping];
}
-(NSString *)description{
    return [[NSString stringWithFormat:@"%@",self] description];
}
-(NSString *)localizedCapitalizedString{
    return [[NSString stringWithFormat:@"%@",self] localizedCapitalizedString];
}
-(NSString *)localizedLowercaseString{
    return [[NSString stringWithFormat:@"%@",self] localizedLowercaseString];
}
-(NSString *)localizedUppercaseString{
    return [[NSString stringWithFormat:@"%@",self] localizedUppercaseString];
}
-(NSString *)lowercaseString{
    return [[NSString stringWithFormat:@"%@",self] lowercaseString];
}
-(NSString *)precomposedStringWithCanonicalMapping{
    return [[NSString stringWithFormat:@"%@",self] precomposedStringWithCanonicalMapping];
}
-(NSString *)precomposedStringWithCompatibilityMapping{
    return [[NSString stringWithFormat:@"%@",self] precomposedStringWithCompatibilityMapping];
}
-(NSString *)uppercaseString{
    return [[NSString stringWithFormat:@"%@",self] uppercaseString];
}
-(BOOL)boolValue{
    return [[NSString stringWithFormat:@"%@",self] boolValue];
}
-(double)doubleValue{
    return [[NSString stringWithFormat:@"%@",self] doubleValue];
}
-(float)floatValue{
    return [[NSString stringWithFormat:@"%@",self] floatValue];
}
-(int)intValue{
    return [[NSString stringWithFormat:@"%@",self] intValue];
}
-(long long)longLongValue{
    return [[NSString stringWithFormat:@"%@",self] longLongValue];
}
-(NSInteger)integerValue{
    return [[NSString stringWithFormat:@"%@",self] integerValue];
}
-(NSStringEncoding)fastestEncoding{
    return [[NSString stringWithFormat:@"%@",self] fastestEncoding];
}
-(NSStringEncoding)smallestEncoding{
    return [[NSString stringWithFormat:@"%@",self] smallestEncoding];
}
-(NSUInteger)hash{
    return [[NSString stringWithFormat:@"%@",self] hash];
}
-(NSUInteger)length{
    return [[NSString stringWithFormat:@"%@",self] length];
}

@end

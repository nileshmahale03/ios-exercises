//
//  EqualityDeterminer.m
//  BlocExercises
//
//  Created by Aaron Brager on 6/10/14.
//
//

#import "EqualityDeterminer.h"

@implementation EqualityDeterminer

- (BOOL) string:(NSString *)string1 isTheSameAsString:(NSString *)string2 {
    
    if ([string1 isEqualToString:string2]) {
        return YES;
    } else {
        return NO;
    }
    
}

- (BOOL) number:(NSNumber *)number1 isTheSameAsNumber:(NSNumber *)number2 {
    
    if ([number1 isEqualToNumber:number2]) {
        return YES;
    } else {
        return NO;
    }
    
}

- (BOOL) integer:(NSInteger)integer1 isGreaterThan:(NSInteger)integer2 {
    
    if (integer1 > integer2) {
        return YES;
    } else {
        return NO;
    }
    
}

@end

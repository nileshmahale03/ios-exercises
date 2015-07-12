//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    NSInteger leftEnd;
    NSInteger rightEnd;
    NSMutableString *outputString = [@"" mutableCopy];
    
    if (number < otherNumber) {
        leftEnd = number;
        rightEnd = otherNumber;
    } else if (number > otherNumber) {
        leftEnd = otherNumber;
        rightEnd = number;
    } else {
        leftEnd = rightEnd = number;
    }
    
    //NSLog(@"Left End: %ld, Right End: %ld", (long)leftEnd, (long)rightEnd);
    
    for (NSInteger n = leftEnd; n <= rightEnd; n++) {
        [outputString appendString:[NSString stringWithFormat:@"%ld", (long)n]];
    }
    
    //NSLog(@"%@", outputString);
    
    return outputString;
}

@end

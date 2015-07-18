//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    // we can only do arithmetic opration on NSInteger
    // so convert NSNumber to NSInteger, do mupltiplication and convert back
    NSInteger myInt = [number intValue];
    NSNumber *twiceNumber = [NSNumber numberWithInt:(int)myInt*2];
    
    return twiceNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    // Array requires an object, so convert NSInteger to NSNumber before adding to array
    
    NSMutableArray *myArray = [[NSMutableArray alloc] init];
    
    for (NSInteger idx = number; idx <= otherNumber; idx ++) {
        NSNumber *myNumber = [NSNumber numberWithInt:(int)idx];
        [myArray addObject:myNumber];
    }
    
    return myArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    NSMutableArray *mutableArrayOfNumbers = [arrayOfNumbers mutableCopy];
    
    //First order the array in asecnding order
    [mutableArrayOfNumbers sortUsingComparator:^NSComparisonResult(id obj1, id obj2) {
        
        
        NSNumber *numberA = (NSNumber *)obj1;
        NSNumber *numberB = (NSNumber *)obj2;
        
        int intValueA = [numberA intValue];
        int intvalueB = [numberB intValue];
        
        if (intValueA > intvalueB) {
            return NSOrderedDescending;
        } else if (intValueA < intvalueB) {
            return NSOrderedAscending;
        }
        return NSOrderedSame;
    }];
    
    //element 0 will be the lowest number
    
    NSNumber *lowestNumber = mutableArrayOfNumbers[0];
    
    return [lowestNumber intValue];
}

@end

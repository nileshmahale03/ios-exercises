//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    NSArray *myArray = [characterString componentsSeparatedByString:@";"];
    // convert String to Array
    
    return myArray;
    // return Array
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSString *myString = [characterArray componentsJoinedByString:@";"];
    // convert Array to String
    
    return myString;
    // return String
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    NSMutableArray *myMutableArray = [characterArray mutableCopy];
    NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES];
    [myMutableArray sortUsingDescriptors:@[sortDescriptor]];
    // create NSMutableArray with ascending order of an Array
    
    return myMutableArray;
    // return NSMutableArray
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    NSMutableArray *myMutableArray = [characterArray mutableCopy];
    NSPredicate *containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c]'Worf'"];
    
    [myMutableArray filterUsingPredicate:containsWorf];
    // create NSMutableArray that CONTAINS word "Worf"
    
    if (myMutableArray.count > 0) {
        return YES;
    } else {
       return NO;
    }
    // return Yes or No if the Array has objects 
}

@end

//
//  StuffRememberer.m
//  BlocExercises
//
//  Created by Aaron on 6/12/14.
//
//

#import "StuffRememberer.h"

@implementation StuffRememberer


- (void) rememberThisArrayForLater:(NSMutableArray *)arrayToRemember {

    self.testArray = arrayToRemember;
    
}

- (void) copyThisArrayForLater:(NSMutableArray *)arrayToCopy {
 
    self.testCopyArray = arrayToCopy;
}

- (void) rememberThisFloatForLater:(CGFloat)floatToRemember {
  
    self.testFloat = floatToRemember;

}

- (NSMutableArray *) arrayYouShouldRemember {
  
    return self.testArray;
}

- (NSMutableArray *) arrayYouShouldCopy {
 
    return self.testCopyArray;
}

- (CGFloat) floatYouShouldRemember {
  
    return self.testFloat;
}

@end
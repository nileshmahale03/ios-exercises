//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSString *favDrinkString = @"";
    id favDrinkId = characterDictionary[@"favorite drink"];
    
    if (favDrinkId != nil) {
        favDrinkString = favDrinkId;
    }
    
    return favDrinkString;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {

    return [charactersArray valueForKey:@"favorite drink"];
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    NSMutableDictionary *localDictionary = [characterDictionary mutableCopy];
    [localDictionary setObject:@"this is my new quote" forKey:@"quote"];
    
    return localDictionary;
}

@end

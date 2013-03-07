//
//  NSArray+Extras.h
//  RssReader
//
//  Created by Zhe Jia on 9/15/12.
//  Copyright (c) 2012 Zhe Jia. 
//

//!From RayWinderlich RSSReader tutorial


#import <Foundation/Foundation.h>

@interface NSArray (Extras)

typedef NSInteger (^compareBlock)(id a, id b);

-(NSUInteger)indexForInsertingObject:(id)anObject sortedUsingBlock:(compareBlock) compare;


@end

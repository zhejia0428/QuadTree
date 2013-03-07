//
//  NSArray+Extras.m
//  RssReader
//
//  Created by Zhe Jia on 9/15/12.
//  Copyright (c) 2012 Zhe Jia. 
//


//!From RayWinderlich RSSReader tutorial

#import "NSArray+Extras.h"

@implementation NSArray (Extras)

-(NSUInteger)indexForInsertingObject:(id)anObject sortedUsingBlock:(compareBlock) compare{
  
  NSUInteger leftIndex = 0;
  NSUInteger rightIndex = self.count;
  
  while (leftIndex < rightIndex) {
    NSUInteger midIndex = (leftIndex+rightIndex)/2;
    id testObject = [self objectAtIndex:midIndex];
    
    if (compare(anObject, testObject)<0) {
      leftIndex = midIndex +1;
    }
    else{
      rightIndex = midIndex;
    }
  }
  return leftIndex;
}

@end

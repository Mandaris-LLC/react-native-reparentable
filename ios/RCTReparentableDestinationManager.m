//
//  ReparentableDestinationManager.m
//  bpmmobile
//
//  Created by Alexander Engel on 11.09.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RCTReparentableDestinationManager.h"
#import "ReparentableDestination.h"

@implementation RCTReparentableDestinationManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(name, NSString)
RCT_EXPORT_VIEW_PROPERTY(size, NSNumber)

- (UIView*)view {
  return [[ReparentableDestination alloc] init];
}

@end

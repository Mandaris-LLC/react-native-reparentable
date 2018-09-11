//
//  ReparentableOriginManager.m
//  bpmmobile
//
//  Created by Alexander Engel on 11.09.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "RCTReparentableOriginManager.h"
#import "ReparentableOrigin.h"

@implementation RCTReparentableOriginManager

RCT_EXPORT_MODULE()
RCT_EXPORT_VIEW_PROPERTY(destination, NSString)
//RCT_EXPORT_VIEW_PROPERTY(onDestinationChange, RCTBubblingEventBlock)

- (UIView*)view {
  return [[ReparentableOrigin alloc] init];
}

@end

//
//  ReparentableView.m
//  bpmmobile
//
//  Created by Alexander Engel on 11.09.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "ReparentableView.h"

@implementation ReparentableView

- (void)moveTo:(UIView*)destination {
  if (self.subviews) {
    self.originSubViews = self.subviews;
  }
  [destination.subviews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    [obj removeFromSuperview];
  }];
  [self.originSubViews enumerateObjectsUsingBlock:^(__kindof UIView * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
    if (obj.superview) {
      //[obj removeFromSuperview];
    }
    [destination addSubview:obj];
    if (obj.superview) {
    }
  }];
}

@end

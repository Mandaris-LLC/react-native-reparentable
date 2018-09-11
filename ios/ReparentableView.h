//
//  ReparentableView.h
//  bpmmobile
//
//  Created by Alexander Engel on 11.09.18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ReparentableView : UIView

@property (copy, nonatomic) NSArray<UIView*> *originSubViews;

- (void)moveTo:(UIView*)destination;

@end

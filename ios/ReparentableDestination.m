#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "ReparentableOrigin.h"
#import "ReparentableDestination.h"
#import "ReparentableRegistry.h"


@implementation ReparentableDestination

- (void)setName:(NSString*)name {
  _name = name;
  [[ReparentableRegistry instance] put:self];
  [self moveIfNeeded];
}

- (void)removeFromSuperview {
  [self restitute];
  [super removeFromSuperview];
}


- (void)moveIfNeeded {
  ReparentableOrigin *potentialOrigin = [[ReparentableRegistry instance] getOrigin:self.name];
  if (potentialOrigin) {
    [potentialOrigin moveTo:self];
    [self prepareNextRestitute:potentialOrigin];
  }
}

- (void)restitute {
  if (self.lastOrigin) {
	[self moveTo:self.lastOrigin];
    self.lastOrigin.lastDestination = nil;
    self.lastOrigin = nil;
  }
}

- (void)prepareNextRestitute:(ReparentableOrigin*)origin {
  self.lastOrigin = origin;
  origin.lastDestination = self;
}

- (instancetype)init {
  self = [super init];
  _name = @"";
  self.lastOrigin = nil;
  return self;
}

@end

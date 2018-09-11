#import <Foundation/Foundation.h>
#import <React/RCTViewManager.h>
#import "ReparentableOrigin.h"
#import "ReparentableDestination.h"
#import "ReparentableRegistry.h"


@implementation ReparentableOrigin

- (instancetype)init {
  self = [super init];
  _destination = @"";
  return self;
}

- (void)setDestination:(NSString *)destination {
  [self restituteIfNeeded:destination];
  [[ReparentableRegistry instance] removeOrigin:self];
  _destination = destination;
  [[ReparentableRegistry instance] putOrigin:self];
  [self move];
  
}

- (void)restituteIfNeeded:(NSString*)destination {
  if ([destination isEqualToString:@""] && self.lastDestination.lastOrigin == self) {
    [self.lastDestination restitute];
  }
}

- (void)move {
  ReparentableDestination *destination = [[ReparentableRegistry instance] get:self.destination];
  if (destination) {
  	[destination restitute];
	[self moveTo:destination];
	[destination prepareNextRestitute:self];
  }
}

@end

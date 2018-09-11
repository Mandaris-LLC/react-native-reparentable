#import "ReparentableView.h"

@class ReparentableOrigin;

@interface ReparentableDestination : ReparentableView

@property (strong, nonatomic) ReparentableOrigin *lastOrigin;
@property (strong, nonatomic) NSString *name;

- (void)restitute;
- (void)prepareNextRestitute:(ReparentableOrigin*)origin;

@end

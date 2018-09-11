#import "ReparentableView.h"

@class ReparentableDestination;

@interface ReparentableOrigin : ReparentableView

@property (strong, nonatomic) NSString *destination;
@property (strong, nonatomic) ReparentableDestination *lastDestination;

@end

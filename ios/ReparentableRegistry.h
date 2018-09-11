#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class ReparentableDestination;
@class ReparentableOrigin;

@interface ReparentableRegistry : NSObject

+ (ReparentableRegistry*)instance;
- (void)put:(ReparentableDestination*)destination;
- (ReparentableDestination*)get:(NSString*)name;
- (void)putOrigin:(ReparentableOrigin*)origin;
- (ReparentableOrigin*)getOrigin:(NSString*)name;
- (void)removeOrigin:(ReparentableOrigin*)origin;

@end

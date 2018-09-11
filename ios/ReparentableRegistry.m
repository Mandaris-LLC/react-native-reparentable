#import "ReparentableRegistry.h"
#import "ReparentableOrigin.h"
#import "ReparentableDestination.h"

@interface ReparentableRegistry ()

@property (strong, nonatomic) NSMutableDictionary<NSString*, ReparentableDestination*> *destinations;
@property (strong, nonatomic) NSMutableDictionary<NSString*, ReparentableOrigin*> *origins;

@end
@implementation ReparentableRegistry

+ (ReparentableRegistry*)instance {
  static ReparentableRegistry *registry;
  static dispatch_once_t onceToken;
  dispatch_once(&onceToken, ^{
  	registry = [ReparentableRegistry new];
  });
  return registry;
}

- (void)put:(ReparentableDestination*)destination {
  [self.destinations setObject:destination forKey:destination.name];
}

- (ReparentableDestination*)get:(NSString*)name {
  return [self.destinations objectForKey:name];
}

- (void)putOrigin:(ReparentableOrigin*)origin {
  [self.origins setObject:origin forKey:origin.destination];
}

- (ReparentableOrigin*)getOrigin:(NSString*)name {
  return [self.origins objectForKey:name];
}

- (void)removeOrigin:(ReparentableOrigin*)origin {
  if (origin.destination) [self.origins removeObjectForKey:origin.destination];
}

- (instancetype)init {
  self = [super init];
  self.destinations = [NSMutableDictionary new];
  self.origins = [NSMutableDictionary new];
  return self;
}

@end


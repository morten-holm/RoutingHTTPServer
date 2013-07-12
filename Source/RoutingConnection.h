#import <Foundation/Foundation.h>
#import "HTTPConnection.h"
@class RoutingHTTPServer;

@interface RoutingConnection : HTTPConnection
@property (nonatomic, readonly) NSString *connectedHost;
@end

#import <Foundation/Foundation.h>
@class HTTPMessage;
@class RoutingConnection;

@interface RouteRequest : NSObject

@property (nonatomic, readonly) NSDictionary *headers;
@property (nonatomic, readonly) NSDictionary *params;
@property (nonatomic, readonly) RoutingConnection *connection;

- (id)initWithHTTPMessage:(HTTPMessage *)msg parameters:(NSDictionary *)params connection:(RoutingConnection *)connection;
- (NSString *)header:(NSString *)field;
- (id)param:(NSString *)name;
- (NSString *)method;
- (NSURL *)url;
- (NSData *)body;

@end

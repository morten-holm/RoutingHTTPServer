#import "RouteRequest.h"
#import "HTTPMessage.h"
#import "RoutingConnection.h"

@implementation RouteRequest {
	HTTPMessage *message;
}

@synthesize params;
@synthesize connection;

- (id)initWithHTTPMessage:(HTTPMessage *)msg parameters:(NSDictionary *)parameters connection:(RoutingConnection *)conn {
	if (self = [super init]) {
		params = parameters;
		message = msg;
        connection = conn;
	}
	return self;
}

- (NSDictionary *)headers {
	return [message allHeaderFields];
}

- (NSString *)header:(NSString *)field {
	return [message headerField:field];
}

- (id)param:(NSString *)name {
	return [params objectForKey:name];
}

- (NSString *)method {
	return [message method];
}

- (NSURL *)url {
	return [message url];
}

- (NSData *)body {
	return [message body];
}

- (NSString *)description {
	NSData *data = [message messageData];
	return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}

@end

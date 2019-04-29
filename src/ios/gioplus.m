/********* gioplus.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "Gioplus.h"
#import "Growing.h"

@interface Gioplus()

@end

@implementation Gioplus

- (void) getDeviceId:(CDVInvokedUrlCommand *)command
{
    NSString* deviceid = [Growing getDeviceId];
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSLog(@"cxk cxk cxk cxk cxk cxk cxk %@ %@ %@", deviceid, deviceid, deviceid);
    NSString* json = [NSString stringWithFormat:@"{\"deviceid\":\"%@\"}", deviceid];
    [self successWithCallbackID:command.callbackId withMessage:json];
}

- (void) getSessionId:(CDVInvokedUrlCommand *)command
{
    NSString* sessionid = [Growing getSessionId];
    NSString* json = [NSString stringWithFormat:@"{\"sessionid\":\"%@\"}", sessionid];
    [self successWithCallbackID:command.callbackId withMessage:json];
}

- (void)coolMethod:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* echo = [command.arguments objectAtIndex:0];

    if (echo != nil && [echo length] > 0) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:echo];
    } else {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
    }

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)successWithCallbackID:(NSString *)callbackID withMessage:(NSString *)message
{
    CDVPluginResult *commandResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:message];
    [self.commandDelegate sendPluginResult:commandResult callbackId:callbackID];
}
@end

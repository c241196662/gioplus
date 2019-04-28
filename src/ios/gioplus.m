/********* gioplus.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "gioplus.h"
#import <growing.h>

@interface gioplus()

@end

@implementation gioplus

- (void) getDeviceId:(CDVInvokedUrlCommand *)command
{
    NSString* deviceid = [growing getDeviceId];
    NSString* json = [NSString stringWithFormat:@"{\"deviceid\":\"%@\"}", deviceid];
    [self successWithCallbackID:command.callbackId withMessage:json];
}

- (void) getSessionId:(CDVInvokedUrlCommand *)command
{
    NSString* sessionid = [growing getSessionId];
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

/********* gioplus.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>


@interface Gioplus : CDVPlugin

- (void) getDeviceId:(CDVInvokedUrlCommand *)command;

- (void) getSessionId:(CDVInvokedUrlCommand *)command;

@end

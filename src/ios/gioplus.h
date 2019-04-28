/********* gioplus.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>


@interface Tim : CDVPlugin

- (void) getDeviceId:(CDVInvokedUrlCommand *)command;

- (void) getSessionId:(CDVInvokedUrlCommand *)command;

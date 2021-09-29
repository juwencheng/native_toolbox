#import "NativeToolboxPlugin.h"

@implementation NativeToolboxPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"native_toolbox"
            binaryMessenger:[registrar messenger]];
  NativeToolboxPlugin* instance = [[NativeToolboxPlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if ([@"crashApp" isEqualToString:call.method]) {
    NSString *key = nil;
    NSDictionary *dic = @{key: @"key"};
    result (@1);
  } else {
    result(FlutterMethodNotImplemented);
  }
}

@end

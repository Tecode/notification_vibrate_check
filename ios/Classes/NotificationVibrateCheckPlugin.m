#import "NotificationVibrateCheckPlugin.h"
#if __has_include(<notification_vibrate_check/notification_vibrate_check-Swift.h>)
#import <notification_vibrate_check/notification_vibrate_check-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "notification_vibrate_check-Swift.h"
#endif

@implementation NotificationVibrateCheckPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftNotificationVibrateCheckPlugin registerWithRegistrar:registrar];
}
@end

#import "TryToastcallPlugin.h"
#if __has_include(<try_toastcall/try_toastcall-Swift.h>)
#import <try_toastcall/try_toastcall-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "try_toastcall-Swift.h"
#endif

@implementation TryToastcallPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTryToastcallPlugin registerWithRegistrar:registrar];
}
@end

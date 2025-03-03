#import "AudioRecorderPlugin.h"
#if __has_include(<audio_recorder/audio_recorder-Swift.h>)
#import <audio_recorder/audio_recorder-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "audio_recorder-Swift.h"
#endif

@implementation AudioRecorderPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAudioRecorderPlugin registerWithRegistrar:registrar];
}
@end

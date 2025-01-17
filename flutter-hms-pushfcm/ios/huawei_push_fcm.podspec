#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint huawei_push_fcm.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'huawei_push_fcm'
  s.version          = '6.1.0.300'
  s.summary          = 'Huawei Push-FCM Proxy plugin for Flutter'
  s.description      = <<-DESC
HUAWEI Push-FCM Proxy plugin for Flutter that exposes all the functionality provided by the HUAWEI
  Push-FCM Proxy SDK.
                       DESC
  s.homepage         = 'https://www.huawei.com'
  s.license          = { :type => 'Apache 2.0', :file => '../LICENSE' }
  s.author           = { 'Huawei Technologies' => 'huaweideveloper1@gmail.com' }
  s.source           = { :git => 'https://github.com/HMS-Core/hms-flutter-plugin/tree/master/flutter-hms-push-fcm' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.platform = :ios, '8.0'

    # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
    s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  end

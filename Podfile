# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'
inhibit_all_warnings!

target 'Free2B' do
  # Comment the next line if you're not using Swift and don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Free2B
  pod 'RxSwift'
  pod 'RxCocoa'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.2'
            config.build_settings['ENABLE_STRICT_OBJC_MSGSEND'] = "NO"
            config.build_settings['CLANG_ENABLE_CODE_COVERAGE'] = "NO"
        end
    end
end

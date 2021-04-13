Pod::Spec.new do |spec|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #

  spec.name         = "ConnectPay"
  spec.version      = "0.0.6"
  spec.summary      = "ConnectPay SDK from TossPayments"

  spec.description  = <<-DESC
                   ConnectPay SDK from TossPayments

                   You can install Pay module easily.
                   DESC

  spec.homepage     = "https://www.tosspayments.com"
  spec.license      = { :type => 'Proprietary', :text => 'Copyright 2021 TossPayments Ltd. All rights reserved.' }
  spec.author       = { "Jinkyu Kim" => "mqz@toss.im" }
  spec.platform     = :ios
  spec.ios.deployment_target = '11.0'
  spec.source       = { :git => "https://github.com/tosspayments/ios-connectpay.git", :tag => "0.0.6" }

  spec.ios.frameworks = 'UIKit'
  
  spec.ios.preserve_paths = [
    'Library/FinCubeOcrSDK.xcframework',
    'Library/FincubeOCRWrapper.xcframework', 
    'Library/TossPaymentsCore.xcframework', 
    'Library/ConnectPay.xcframework'    
  ]
  spec.ios.vendored_frameworks = [
    'Library/FinCubeOcrSDK.xcframework',
    'Library/FincubeOCRWrapper.xcframework', 
    'Library/TossPaymentsCore.xcframework', 
    'Library/ConnectPay.xcframework'
  ]
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  
end

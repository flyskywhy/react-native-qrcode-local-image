Pod::Spec.new do |spec|
  spec.name         = 'react-native-qrcode-local-image'
  spec.version      = '1.0.12'
  spec.platforms    = { :ios => "11.0" }
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/flyskywhy/react-native-qrcode-local-image'
  spec.authors      = { 'Li Zheng' => 'flyskywhy@gmail.com' }
  spec.source       = { :git => 'https://github.com/flyskywhy/react-native-qrcode-local-image.git' }
  spec.source_files = 'ios/RCTQRCodeLocalImage/*.{h,m}'
  spec.summary = "this is a package"

  spec.dependency 'React'
end

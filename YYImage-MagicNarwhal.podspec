Pod::Spec.new do |s|
  s.name         = 'YYImage-MagicNarwhal'
  s.summary      = 'Image framework for iOS to display/encode/decode animated WebP, APNG, GIF, and more.'
  s.version      = '1.0.7'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.authors      = { 'ibireme' => 'ibireme@gmail.com' }
  s.social_media_url = 'http://blog.ibireme.com'
  s.homepage     = 'https://github.com/MagicNarwhal/YYImage'
  s.ios.deployment_target = '8.0'
  s.source       = { :git => 'https://github.com/MagicNarwhal/YYImage.git', :tag => s.version.to_s }
  
  s.requires_arc = true
  s.default_subspec = 'Core'
  
  s.subspec 'Core' do |core|
    core.source_files = 'MagicNarwhal-YYImage/*.{h,m}'
    core.public_header_files = 'MagicNarwhal-YYImage/*.h'
    core.libraries = 'z'
    core.frameworks = 'UIKit', 'CoreFoundation', 'QuartzCore', 'AssetsLibrary', 'ImageIO', 'Accelerate', 'MobileCoreServices'
  end
  
  s.subspec 'WebP' do |webp|
    webp.dependency 'YYImage-MagicNarwhal/Core'
    webp.ios.vendored_frameworks = 'Vendor/WebP.framework'
  end

end

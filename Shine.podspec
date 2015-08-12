Pod::Spec.new do |s|
  s.name                = "Shine"
  s.version             = "1.2.1"
  s.summary             = "The Shine iOS SDK, for integrating Shine into your iOS application."
  s.homepage            = "https://github.com/SoundwaveApp/Shine-iOS"
  s.license             = { :type => 'Apache 2.0', :file => 'LICENSE.txt' }
  s.authors             = { "Clodagh ML" => "clodagh@soundwave.com", "Liam Russell" => "liam@soundwave.com", "Brian Boyle" => "brian@soundwave.com" }
  s.source              = { :git => "https://github.com/SoundwaveApp/Shine-iOS.git", :tag => s.version.to_s }
  s.frameworks          = ["Foundation", "CoreGraphics", "MobileCoreServices", "Security", "CoreData"]
  s.requires_arc        = true
  s.platform            = :ios, '7.1'
  s.preserve_paths      = 'Shine.framework'
  s.public_header_files = 'Shine.framework/Versions/A/Headers/Shine.h'
  s.resource            = 'Shine.framework/Versions/A/Resources/ShineBundle.bundle'
  s.vendored_frameworks = 'Shine.framework'
end

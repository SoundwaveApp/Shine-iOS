#
# Be sure to run `pod lib lint ${POD_NAME}.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "Shine"
  s.version          = "1.0"
  s.summary          = "The Shine iOS SDK, for integrating Shine into your iOS application."
  s.description      = "The Shine iOS SDK, for integrating Shine into your iOS application. Supports iOS 7 and iOS 8."
  s.homepage         = "https://github.com/SoundwaveApp/Shine-iOS"
  s.license          = { :type => 'Apache 2.0', :text => <<-LICENSE
				   			Copyright 2015 Soundwave

				   		 	Licensed under the Apache License, Version 2.0 (the "License");
				   		 	you may not use this file except in compliance with the License.
				   		 	You may obtain a copy of the License at

				       	 	http://www.apache.org/licenses/LICENSE-2.0

				   		 	Unless required by applicable law or agreed to in writing, software
				  		  	distributed under the License is distributed on an "AS IS" BASIS,
				   		 	WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
				   		 	See the License for the specific language governing permissions and
				   		 	limitations under the License.
                 		   LICENSE
               			}
  s.author           = { "${USER_NAME}" => "${USER_EMAIL}" }
  s.source           = { :git => "https://github.com/SoundwaveApp/Shine-iOS.git", :tag => s.version.to_s }
  s.frameworks          = ["Foundation", "CoreGraphics", "MobileCoreServices", "Security", "CoreData"]
  s.requires_arc        = true
  s.platform            = :ios, '7.0'
  s.preserve_paths      = 'Shine.framework'
  s.public_header_files = 'Shine.framework/Versions/A/Headers/Shine.h'
  s.resource            = 'Shine.framework/Versions/A/Resources/ShineBundle.bundle'
  s.vendored_frameworks = 'Shine.framework'



end

Pod::Spec.new do |s|
  s.name         = "Symday"
  s.version      = "0.0.1"
  s.summary      = "A simple wrapper of dateFormatFromTemplate."
  s.description  = <<-DESC
                   "A cross platform date formatting framework for iOS and Linux."
                   DESC
  s.homepage     = "https://github.com/tnantoka/Symday"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "tnantoka" => "tnantoka@bornneet.com" }
  s.social_media_url   = "https://twitter.com/tnantoka"

  s.ios.deployment_target = "9.2"

  s.source       = { :git => "https://github.com/tnantoka/Symday.git", :tag => "v#{s.version}" }

  s.source_files  = "Symday/*.{h,m,swift}"
  s.public_header_files = "Symday/*.h"

  s.framework  = "Foundation"
end

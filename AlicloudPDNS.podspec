Pod::Spec.new do |s|
  s.name                  = "AlicloudPDNS"
  s.version               = "2.2.0"
  s.summary               = "阿里云公共DNS-SDK"
  s.homepage              = "https://github.com/Voyager-Zhang/AlicloudPDNS"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "邢浩" => "wb-xh839484@alibaba-inc.com" }
  s.source                = { :http => "framework_url" }
  s.platform              = :ios, '9.0'
  s.source_files          = "pdns-sdk-ios.framework/Header/*.{h}"
  s.vendored_frameworks = 'pdns-sdk-ios.framework'
  s.frameworks = 'Foundation','CoreTelephony'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC'}

end

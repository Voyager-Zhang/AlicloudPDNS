Pod::Spec.new do |s|
  s.name                  = "AlicloudPDNS"
  s.version               = "2.2.0"
  s.summary               = "阿里云公共DNS-SDK"
  s.homepage              = "https://github.com/Voyager-Zhang/AlicloudPDNS"
  s.license               = { :type => "MIT", :file => "LICENSE" }
  s.author                = { "邢浩" => "wb-xh839484@alibaba-inc.com" }
  s.source                = { :http => 'https://github.com/Voyager-Zhang/AlicloudPDNS' }
  
  # 明确设置平台
  s.platform              = :ios, '9.0' # 将部署目标提高到 12.0，确保与现代 iOS 设备兼容。
  s.public_header_files   = 'pdns-sdk-ios.framework/Headers/*.h'
  s.source_files          = 'pdns-sdk-ios.framework/Headers/*.{h,m}'
  # Vendored framework 的路径
  s.vendored_frameworks    = 'pdns-sdk-ios.framework'
  s.frameworks            = 'Foundation', 'CoreTelephony'
  
  # 添加其他链接标志
  s.xcconfig             = { 'OTHER_LDFLAGS' => '-ObjC',
			     'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64 armv7' # 排除特定架构，确保不在模拟器上运行
	 }
  
        
  # 推荐的构建配置（可选）
  s.requires_arc          = true  # 确保启用 ARC (Automatic Reference Counting)
  s.ios.deployment_target = '9.0' # 统一部署目标
end

Pod::Spec.new do |s|
  s.name              = "CZLShareSDK"
  s.version           = "2.12.1"
  s.summary           = "sharesdk for iOS. ."
  s.homepage          = "http://www.mob.com/"
  s.description  = <<-DESC
                   同步sharesdk更新,同步sharesdk更新,同步sharesdk更新,同步sharesdk更新
                   DESC
  s.license           = {
    :type => 'Copyright',
    :text => <<-LINCENSE
      掌淘网络  版权所有.
      LINCENSE
  }
  s.author            = { “sharesdk” => "http://sharesdk.mob.com/" }
  s.platform          = :ios, '6.0'
  s.requires_arc      = true

  s.source            = { :git => "https://github.com/czlib/CZLShareSDK.git", :tag => "#{s.version}" }
  s.frameworks        = 'CoreTelephony', 'SystemConfiguration', 'CoreMotion'
  s.libraries         = 'z', 'c++'

s.default_subspec   = 'Core'

  s.subspec "Core" do |core|
    core.source_files = 'sources/extensions/ANAlipayResultCode.h'
    core.resources    = 'AlipaySDK.bundle'
    core.vendored_frameworks = 'AlipaySDK.framework'
    core.public_header_files = 'AlipaySDK.framework/Headers/**/*.h', 'sources/extensions/ANAlipayResultCode.h'
  end

end
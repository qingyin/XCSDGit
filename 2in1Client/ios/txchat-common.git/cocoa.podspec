Pod::Spec.new do |s|
  s.name         = "TXChatCommon"
  s.version      = "2.1.2"
  s.summary      = "Tuxing inc ios common framework"
  s.description  = <<-DESC
                   Tuxing inc ios common framework for tuxing chat app
                   DESC
  s.homepage     = "http://182.92.236.193/lingqing.wan/txchat_ios_common_framework/"
  s.license      = "MIT"
  s.author       = { "lingqingwan" => "" }
  s.source       = { :git => "http://182.92.236.193/ios/txchat-common.git", :tag=>s.version.to_s}
  s.source_files			= "src/TXChatCommonFramework/**/*.{c,h,m}"
  s.resource  = "src/TXChatCommonFramework/**/*.{bundle,xib,strings,png}"
  s.vendored_frameworks = 'src/TXChatCommonFramework/**/*.framework'
  s.vendored_libraries = 'src/TXChatCommonFramework/**/*.a'
  s.exclude_files			= "Classes/Exclude"
  s.ios.deployment_target	= '7.0'



  s.ios.dependency 'RDVTabBarController'
  s.ios.dependency 'Masonry'
  s.ios.dependency 'SDiPhoneVersion', '~> 1.1.1'
  s.ios.dependency 'NJKWebViewProgress'
  s.ios.dependency 'MJRefresh', '2.4.7'
  s.ios.dependency 'Reachability'
  s.ios.dependency 'CocoaLumberjack'
  s.ios.dependency 'DateTools'
  s.ios.dependency 'APAddressBook'
  s.ios.dependency 'AFDownloadRequestOperation'
  s.ios.dependency 'MMPopupView'
	
end

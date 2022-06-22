Pod::Spec.new do |s|
  s.name         = 'gadandan-EpsonSDK'
  s.version      = '2.14.0'
  s.summary      = 'Epson ePOS-Print SDK for iOS'
  s.description  = <<-DESC
                    The ePOS-Print SDK for iOS is an SDK aimed at development engineers who 
                    are developing iOS applications for printing on an EPSON TM printer.
                    Applications are developed using the APIs provided by ePOS-Print SDK.
                    ePOS-Print SDK for Android for Android devices is also provided in 
                    ePOS-Print SDK.
                    For detailed information, please see ePOS-Print SDK for iOS User's Manual.
                   DESC
  s.homepage     = 'https://download.epson-biz.com/modules/pos/index.php?page=single_soft&cid=5594&scat=58&pcat=52'
  s.license      = { :type => 'Commercial', :file => 'LICENSE' }
  s.author       = { 'SEIKO EPSON CORPORATION' => 'contact@epson.com' }
  s.platform     = :ios, '8.0'
  s.source       = { :git => 'https://github.com/k-ele/gadandan-EpsonSDK.git', :tag => s.version.to_s }
  s.source_files  = '*.h'
  s.preserve_paths = 'libepos2.a', 'libeposeasyselect.a'
  s.frameworks = 'UIKit', 'CoreGraphics', 'ExternalAccessory'
  s.library   = 'epos2', 'eposeasyselect', 'z', 'xml2.2'
  s.xcconfig  =  { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/gadandan-EpsonSDK"' }
end

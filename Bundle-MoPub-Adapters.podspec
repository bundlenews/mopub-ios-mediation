#
# Be sure to run `pod lib lint MoPub-Google-Adapters.podspec' to ensure this is a
# valid spec before submitting.
#

Pod::Spec.new do |s|
  s.name             = 'Bundle-MoPub-Adapters'
  s.version          = '1.0.0'
  s.summary          = 'Google and Facebook Audience Network adapters for mediating through MoPub.'
  s.description      = <<-DESC
  Admob:\n
  Supported ad formats: Banner, Interstitial, Rewarded Video, Native.\n
  To download and integrate the Mobile Ads SDK, please check this tutorial: https://developers.google.com/admob/ios/download.\n\n
  For inquiries and support, please utilize the developer support forum: https://groups.google.com/forum/#!forum/google-admob-ads-sdk/. \n\n
  FacebookAudienceNetwork:\n
  Supported ad formats: Banners, Interstitial, Rewarded Video and Native.\n
  To download and integrate the Facebook SDK, please check https://developers.facebook.com/docs/audience-network/ios/#sdk. \n\n
  For inquiries and support, please visit https://developers.facebook.com/products/audience-network/faq/. \n
  DESC
  s.homepage         = 'https://github.com/mopub/mopub-ios-mediation'
  s.license          = { :type => 'New BSD', :file => 'AdMob/MoPub-AdMob-Podspecs/LICENSE' }
  s.author           = { 'MoPub' => 'support@mopub.com' }
  s.source           = { :git => 'https://github.com/bundlenews/mopub-ios-mediation.git', :tag => '1.0.0-bundle' }
  s.ios.deployment_target = '8.0'
  s.static_framework = true

  s.default_subspecs = 'Bundle'

  s.subspec 'Bundle' do |bundle|
    bundle.dependency 'Bundle-MoPub-Adapters/AdMob'
    bundle.dependency 'Bundle-MoPub-Adapters/FacebookAudienceNetwork'
  end

  s.subspec 'AdMob' do |admob|
    admob.dependency 'mopub-ios-sdk', '~> 5.0'
    admob.dependency 'Google-Mobile-Ads-SDK', '7.31.0'
    admob.source_files = 'AdMob/*.{h,m}'
  end

  s.subspec 'FacebookAudienceNetwork' do |fan|
    fan.dependency 'mopub-ios-sdk', '~> 5.0'
    fan.dependency 'FBAudienceNetwork', '4.28.1'
    fan.source_files = 'FacebookAudienceNetwork/*.{h,m}'
  end
end

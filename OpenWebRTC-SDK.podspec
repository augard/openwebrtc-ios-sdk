Pod::Spec.new do |s|
  s.name         = "OpenWebRTC-SDK"
  s.version      = "0.4.3"
  s.summary      = "SDK for adding WebRTC to your app through OpenWebRTC"
  s.homepage     = "http://www.openwebrtc.org"
  s.license      = { :type => "BSD-2", :file => "LICENSE" }
  s.author       = { "Ericsson AB" => "labs@ericsson.com" }
  s.social_media_url = "https://twitter.com/OpenWebRTC"
  s.platform     = :osx, '10.8'
  s.source       = { :git => "https://github.com/augard/openwebrtc-ios-sdk.git", :tag => s.version.to_s }
  s.source_files = "SDK/**/*.{h,m}"
  s.resources = "Resources/**"
  s.dependency 'OpenWebRTC'
  #s.resource = { :http => "https://github.com/EricssonResearch/openwebrtc/blob/master/bridge/client/sdp.js" }
  s.libraries = "c++", "resolv"
  s.framework = "OpenWebRTC", "WebKit"
  s.requires_arc = true

  s.xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/Headers/Public/**"'
  }
end

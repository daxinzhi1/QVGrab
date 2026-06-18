Pod::Spec.new do |s|

  s.name         = "ffmpeg-ios"
  s.version      = "6.0"
  s.summary      = "FFmpeg iOS XCFramework"

  s.description  = <<-DESC
FFmpeg iOS prebuilt XCFramework distribution.
DESC

  s.homepage     = "https://ffmpeg.org"
  s.license      = { :type => "LGPL-3.0" }
  s.author       = { "FFmpeg" => "ffmpeg@ffmpeg.org" }

  s.platform     = :ios, "12.0"
  s.requires_arc = true

  s.libraries    = "z", "bz2", "c++", "iconv"

  s.frameworks   = [
    "AudioToolbox",
    "AVFoundation",
    "CoreMedia",
    "VideoToolbox"
  ]

  # ✅ 关键改动：不再使用 path
  s.source       = {
    :git => "https://github.com/YLCHUN/ffmpeg-ios.git",
    :tag => s.version.to_s
  }

  # ✅ 只保留 xcframework
  s.vendored_frameworks = [
    "xcframework/libavcodec.xcframework",
    "xcframework/libavdevice.xcframework",
    "xcframework/libavfilter.xcframework",
    "xcframework/libavformat.xcframework",
    "xcframework/libavutil.xcframework",
    "xcframework/libswresample.xcframework",
    "xcframework/libswscale.xcframework"
  ]

end
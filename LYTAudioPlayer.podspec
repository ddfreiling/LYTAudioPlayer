Pod::Spec.new do |s|

  s.name         = "LYTAudioPlayer"
  s.version      = "0.1.5"
  s.summary      = "AudioPlayer developed on top of AVAudioQueuePlayer for the LYT project"
  s.description  = <<-DESC
                   Abstraction on top of AVAudioQueuePlayer with support for full playlist navigation, pre-buffering for gapless playback, interruption handling and NowPlayingInfo.
                   DESC

  s.homepage     = "https://github.com/dfg-nota/iOSAudioQueuePlayer"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "LGPL3", :file => "LICENSE" }
  s.authors            = { "Daniel Freiling" => "dfg@nota.dk" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/dfg-nota/LYTAudioPlayer.git", :tag => "#{s.version}" }

  s.source_files  = "AudioQueuePlayer", "**/*.{h,swift}"
  s.exclude_files = "AudioQueuePlayerDemo", "Carthage", "**/AVQueuePlayerPrevious.swift", "**/MyPlayerItem.swift"

  # s.public_header_files = "Classes/**/*.h"
  #s.resources   = "AudioQueuePlayer", "**/*.{png,jpeg,jpg,storyboard,xib}"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.frameworks  = "AVFoundation"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

end

Pod::Spec.new do |s|
  s.name         = "libogg"
  s.version      = "1.3.2"
  s.summary      = "Low-level media demuxer/muxer library"

  s.description  = <<-DESC
                   Xiph's C-based Ogg media stream demuxer/muxer library, packaged for iOS.
                   Needed for decoding or encoding of Ogg Theora video and Vorbis audio.
                   DESC

  s.homepage     = "https://xiph.org/ogg/"

  s.license      = { :type => "BSD", :file => "ogg/COPYING" }

  s.author             = { "Yehor Popovych (packager)" => "popovych.yegor@gmail.com" }
  s.social_media_url   = "https://planet.xiph.org/"

  s.platform     = :ios, "6.0"

  s.source       = { :git => "https://github.com/evature/ogg-ios.git",
                     :tag => s.version,
                     :submodules => true }

  s.compiler_flags = "-O3",
                     "-Wno-conversion"
                     
  s.requires_arc = false

  s.source_files = "ogg/src",
                   "ogg/include/**/*.h",
                   "config.h"
        
  s.public_header_files = "ogg/include/**/*.h", "config.h"
  
  s.header_dir = "ogg"
end



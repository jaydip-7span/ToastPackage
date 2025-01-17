Pod::Spec.new do |spec|
  spec.name         = "ToastPackager"
  spec.version      = "1.0.1"
 spec.summary      = "  ToastManager is a simple, elegant, and highly customizable library to display toast notifications in your SwiftUI applications. Featuring smooth animations, flexible styling, and user-friendly integration, it's designed to enhance the overall user experience by providing sleek notifications"

  spec.description  = <<-DESC
SwiftUI ToastManager is a lightweight library for displaying customizable, animated toast notifications in your app. It allows smooth fade-in and fade-out animations, supports various alignments (top, bottom, center), and offers customization for message text, background, and tint colors. You can integrate it via Swift Package Manager or manually by adding files to your project. The toasts automatically disappear after a delay, enhancing the user experience with elegant, non-intrusive feedback.
                   DESC

  spec.homepage     = "https://github.com/jaydip-7span/ToastPackage"
  spec.license      = "MIT"

  spec.author             = { "jaydip-7span" => "jaydip@7span.com" }

 
  spec.source       = { :git => "https://github.com/jaydip-7span/ToastPackage.git", :tag => "#{spec.version}" }
  spec.source_files  = "ToastPackager", "ToastPackager/**/*.{h,m,swift}"

spec.osx.deployment_target = nil


spec.source_files =  'Sources/ToastPackager/**/*.swift'

spec.requires_arc = true
spec.swift_version = '5.0'
spec.platform     = :ios, "16.0"
end

# Homebrew Cask for OpenRappter. Publish by copying to Casks/openrappter.rb in github.com/kody-w/homebrew-tap
# and filling the sha256 from the release's .dmg.sha256 asset.
cask "openrappter" do
  version "2.0.0"
  sha256 "f10b8c0909f3543d8a31a9b943af28e2f34e9d4f42878be7bd4ca4691e5d9f3d"

  url "https://github.com/kody-w/openrappter/releases/download/v#{version}-app/OpenRappter-#{version}.dmg"
  name "OpenRappter"
  desc "A creature in your Mac's notch: hold a key and talk, it thinks with your Copilot sign-in"
  homepage "https://kody-w.github.io/openrappter/notch/"

  depends_on macos: :sonoma

  app "OpenRappter.app"

  zap trash: [
    "~/Library/LaunchAgents/com.openrappter.kernel.plist",
    "~/.openrappter",
  ]
end

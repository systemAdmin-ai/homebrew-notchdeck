cask "notchdeck" do
  version "2.0.1"
  sha256 "431041c00338d68d1f0cd159fa75763245808a4606b3b8cdbf93836ba2b962e7"

  url "https://github.com/systemAdmin-ai/NotchDeck/releases/download/v#{version}-preview.1/NotchDeck.dmg",
      verified: "github.com/systemAdmin-ai/NotchDeck/"
  name "NotchDeck"
  desc "Control center and system monitor in the MacBook notch"
  homepage "https://systemAdmin-ai.github.io/NotchDeck/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "NotchDeck.app"

  caveats <<~EOS
    NotchDeck is ad-hoc signed, not notarized by Apple. The first launch may be
    blocked by Gatekeeper. Homebrew removes the quarantine flag on install, so
    the app should open normally. If macOS still refuses, run:
      xattr -dr com.apple.quarantine "#{appdir}/NotchDeck.app"
  EOS
end

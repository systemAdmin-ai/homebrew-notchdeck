cask "notchdeck" do
  version "2.2.0"
  sha256 "05529a70bfad97fc01ec9e59f5bb054301bb2ca4a0982ea47fa5c5a6cdeec8d7"

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
    NotchDeck is signed with a local certificate and is not notarized by Apple,
    so macOS may block the first launch. Clear the quarantine flag once with:
      xattr -dr com.apple.quarantine "#{appdir}/NotchDeck.app"
    Or install without quarantine: brew install --cask --no-quarantine notchdeck
  EOS
end

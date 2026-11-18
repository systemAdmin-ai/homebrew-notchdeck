cask "notchdeck" do
  version "2.1.1"
  sha256 "0457bbf76a88d9d959b90f370d78adc8e32c3fcebb950238467d86c285ebc248"

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
    NotchDeck is ad-hoc signed, not notarized by Apple, so macOS may block the
    first launch. Clear the quarantine flag once with:
      xattr -dr com.apple.quarantine "#{appdir}/NotchDeck.app"
    Or install without quarantine: brew install --cask --no-quarantine notchdeck
  EOS
end

# Homebrew tap for NotchDeck

```bash
brew install --cask systemAdmin-ai/notchdeck/notchdeck
```

The app is ad-hoc signed, so macOS may block the first launch. Either clear the
quarantine flag once, or install with `--no-quarantine`:

```bash
xattr -dr com.apple.quarantine "/Applications/NotchDeck.app"
brew install --cask --no-quarantine systemAdmin-ai/notchdeck/notchdeck
```

Or tap first:

```bash
brew tap systemAdmin-ai/notchdeck
brew install --cask notchdeck
```

Uninstall: `brew uninstall --cask notchdeck`.

NotchDeck is ad-hoc signed, not notarized by Apple. Details and permissions:
https://systemAdmin-ai.github.io/NotchDeck/

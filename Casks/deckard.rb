cask "deckard" do
  version "0.17.0"
  sha256 "abc146f1ab5c51953386f85c3aa9670f1fb7c2a55a9fc0815c5c94a77a558140"

  url "https://github.com/gi11es/deckard/releases/download/v#{version}/Deckard-#{version}.dmg"
  name "Deckard"
  desc "A terminal built for Claude Code"
  homepage "https://github.com/gi11es/deckard"

  depends_on macos: ">= :sonoma"

  app "Deckard.app"

  zap trash: [
    "~/Library/Application Support/Deckard",
    "~/Library/Preferences/com.deckard.app.plist",
  ]
end

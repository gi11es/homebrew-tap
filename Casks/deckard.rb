cask "deckard" do
  version "0.13.0"
  sha256 "7e8c508fe4300f6b4894f12bd27ddab63da11753ecb3addbcec112d22f0e94b9"

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

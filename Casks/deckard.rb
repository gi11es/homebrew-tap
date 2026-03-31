cask "deckard" do
  version "0.17.1"
  sha256 "bf32dfd1921a4de9ae2098cb96ccb9806202e7aa4c4ad0a8d2f30294ab42159c"

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

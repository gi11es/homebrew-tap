cask "deckard" do
  version "0.17.2"
  sha256 "0ddc231010afb09d1b19d3bff338f15a16c413375e3ff47a0a2516d36f8dca7b"

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

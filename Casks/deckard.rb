cask "deckard" do
  version "0.16.0"
  sha256 "4d9f6b22a62557ab566da7ae8a8c6c9e7a4916eefbff4d8df37d0273af72ce3c"

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

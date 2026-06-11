cask "deckard" do
  version "0.22.0"
  sha256 "18e3cb67bdbf4e3e7447119abcb2d99598f10d3d3690aa4a15fcc7b8507ef59d"

  url "https://github.com/gi11es/deckard/releases/download/v#{version}/Deckard-#{version}.dmg"
  name "Deckard"
  desc "A terminal built for Claude Code"
  homepage "https://github.com/gi11es/deckard"

  depends_on macos: :sonoma

  app "Deckard.app"

  zap trash: [
    "~/Library/Application Support/Deckard",
    "~/Library/Preferences/com.deckard.app.plist",
  ]
end

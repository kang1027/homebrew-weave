cask "weave-pt" do
  version "0.1.11"
  sha256 "dece765072e1b0931616d8081092da1820a3cc3aa16c6c0c2ff2a181b1d00dcf"

  url "https://github.com/kang1027/Weave/releases/download/v#{version}/Weave-#{version}.zip"
  name "Weave"
  desc "Menu-bar portfolio tracker"
  homepage "https://github.com/kang1027/Weave"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Weave.app"

  zap trash: [
    "~/Library/Application Support/Weave",
    "~/Library/Caches/app.weave",
    "~/Library/Preferences/app.weave.plist",
  ]
end

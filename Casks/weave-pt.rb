cask "weave-pt" do
  version "0.1.0"
  sha256 "0b13accae41c080cee1940217052d5f8270c600954b0d9943eb7851873c485de"

  url "https://github.com/kang1027/Weave/releases/download/v#{version}/Weave-#{version}.zip"
  name "Weave"
  desc "Menu-bar portfolio tracker"
  homepage "https://github.com/kang1027/Weave"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Weave.app"

  zap trash: [
    "~/Library/Application Support/Weave",
    "~/Library/Caches/app.weave",
    "~/Library/Preferences/app.weave.plist",
  ]
end

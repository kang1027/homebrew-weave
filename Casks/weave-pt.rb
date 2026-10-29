cask "weave-pt" do
  version "0.2.1"
  sha256 "24c247b70114a95c83d1c287f6afe007107e472b148d3b6ff9be5c917b297a8b"

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

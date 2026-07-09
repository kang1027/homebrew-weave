cask "weave-pt" do
  version "0.1.18"
  sha256 "35c491a08d9e93d23bc4412a25f583b68d4daa162c827f063a3f3675e8b09b63"

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

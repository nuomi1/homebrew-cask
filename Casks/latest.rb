cask "latest" do
  version "0.7.1"
  sha256 :no_check

  url "https://max.codes/latest/Latest.zip"
  appcast "https://max.codes/latest/update.xml"
  name "Latest"
  desc "Utility that shows the latest app updates"
  homepage "https://max.codes/latest"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Latest.app"

  zap trash: [
    "~/Library/Caches/com.max-langer.Latest",
    "~/Library/Cookies/com.max-langer.Latest.binarycookies",
    "~/Library/Preferences/com.max-langer.Latest.plist",
    "~/Library/Saved Application State/com.max-langer.Latest.savedState",
  ]
end

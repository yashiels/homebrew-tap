cask "keepawake" do
  version "0.1.0"
  sha256 "2880fa81e965302d9c881bd367220aab41916bda3bcbbfeb2ea4419df43b1268"

  url "https://github.com/yashiels/keep-awake/releases/download/v#{version}/KeepAwake-v#{version}.dmg"
  name "KeepAwake"
  desc "Menu bar app to prevent Jamf-managed macOS screen lock"
  homepage "https://github.com/yashiels/keep-awake"

  app "KeepAwake.app"

  zap trash: [
    "~/Library/Preferences/com.yashiels.KeepAwake.plist",
  ]
end

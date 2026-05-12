cask "keepawake" do
  version "0.2.1"
  sha256 "351115f0a8449c75072edea287ec68f05947f277c6e2fcf8a7023020ed8ccb30"

  url "https://github.com/yashiels/keep-awake/releases/download/v#{version}/KeepAwake-v#{version}.dmg"
  name "KeepAwake"
  desc "Menu bar app to prevent Jamf-managed macOS screen lock"
  homepage "https://github.com/yashiels/keep-awake"

  app "KeepAwake.app"

  zap trash: [
    "~/Library/Preferences/com.yashiels.KeepAwake.plist",
  ]
end

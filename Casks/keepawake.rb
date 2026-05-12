cask "keepawake" do
  version "0.2.6"
  sha256 "35499fae938ec623ea9d8b05fa7d1458487be044826010c3ae911b5349eb4b08"

  url "https://github.com/yashiels/keep-awake/releases/download/v#{version}/KeepAwake-v#{version}.dmg"
  name "KeepAwake"
  desc "Menu bar app to prevent Jamf-managed macOS screen lock"
  homepage "https://github.com/yashiels/keep-awake"

  app "KeepAwake.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/KeepAwake.app"]
  end

  zap trash: [
    "~/Library/Preferences/com.yashiels.KeepAwake.plist",
  ]
end

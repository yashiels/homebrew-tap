cask "keepawake" do
  version "0.2.4"
  sha256 "cab9ed8b7f1583f7c4eead5400f270cd6dfac94f6d70121e3a344e0d595bbae6"

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

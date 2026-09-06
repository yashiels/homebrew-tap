cask "keepawake" do
  version "0.3.3"
  sha256 "d721fc954d1c44b12fa13850b79da9f99c222bb0c188f454bcea9fadb71a445a"

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

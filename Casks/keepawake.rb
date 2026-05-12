cask "keepawake" do
  version "0.2.2"
  sha256 "80d56a5e1f6ca19b887aefad0841e9093f8a39820d86d60d0e076e2ef032c36b"

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

cask "keepawake" do
  version "0.3.1"
  sha256 "25155e8fa220facb1ef762082172a03bcddd4b0660e1784490099b72e0ae9e4f"

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

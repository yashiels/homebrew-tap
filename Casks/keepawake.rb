cask "keepawake" do
  version "0.2.0"
  sha256 "178181f82c2e410007e9fe7bdd70f41126a469208a404578b9367bb637906838"

  url "https://github.com/yashiels/keep-awake/releases/download/v#{version}/KeepAwake-v#{version}.dmg"
  name "KeepAwake"
  desc "Menu bar app to prevent Jamf-managed macOS screen lock"
  homepage "https://github.com/yashiels/keep-awake"

  app "KeepAwake.app"

  zap trash: [
    "~/Library/Preferences/com.yashiels.KeepAwake.plist",
  ]
end

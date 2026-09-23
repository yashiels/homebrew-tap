class Reddit < Formula
  desc "Reddit from the terminal, authenticating as the official Android app"
  homepage "https://github.com/yashiels/reddit-cli"
  version "0.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "8c87e208b1e053d558df8a176a86f5f973ff8de1a389cb4f99218bd93aa87647"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "e0709010730bdb82c93121b4c57c85732c43fd92122d9de87cedbf20d4a67f36"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_arm64.tar.gz"
      sha256 "fef7de1502b0014fa12c68053dad39d26662bcb3fdfe2c64862218e8753ae02c"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_amd64.tar.gz"
      sha256 "2564ed21e660395cad699f31c4653e161fbd04caf69cdc64df72b95b0da54d25"
    end
  end

  def install
    bin.install "reddit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddit --version")
  end
end

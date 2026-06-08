class Postnet < Formula
  desc "Track PostNet parcels in one command"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    system bin/"postnet", "--help"
  end
end

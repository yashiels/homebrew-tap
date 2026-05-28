class Postnet < Formula
  desc "Track PostNet parcels in one command"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet-v#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet-v#{version}-linux-x64.tar.gz"
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

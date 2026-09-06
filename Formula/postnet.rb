class Postnet < Formula
  desc "Track PostNet parcels from the command line"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.3/postnet-v1.0.3-darwin-arm64.tar.gz"
      sha256 "ac3cf6da46b633553ce561c74c5a3113ab00d140ffd5d0b3edbd181628c47f1e"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.3/postnet-v1.0.3-darwin-amd64.tar.gz"
      sha256 "9696ee9b100b61c08a6981bbc1ff465f97ccb4f91f7a904b07f1f29771f66900"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.3/postnet-v1.0.3-linux-arm64.tar.gz"
      sha256 "de05c567e71f0634a9395a15e9a046c31302df9b638a8c464b27ed794ff78b21"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.3/postnet-v1.0.3-linux-amd64.tar.gz"
      sha256 "3c93389e08a78b4bd77108df9deb7f5305f8032f38e90e0cf88bf2b7af319e23"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    system bin/"postnet", "--version"
  end
end

class Takealot < Formula
  desc "Search, cart, and checkout on Takealot without a browser"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-linux-x64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--help"
  end
end

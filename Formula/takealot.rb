class Takealot < Formula
  desc "Search, cart, and checkout on Takealot without a browser"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot_#{version}_linux_amd64.tar.gz"
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

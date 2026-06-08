class Woolies < Formula
  desc "Woolworths Dash grocery delivery from your shell"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--help"
  end
end

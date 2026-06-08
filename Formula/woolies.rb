class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.0.1/woolies-v1.0.1-darwin-arm64.tar.gz"
      sha256 "c172dd054519fde9aa914c951b39d147f2eb6890dc8ceafc89d876d1f0b05e82"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--version"
  end
end

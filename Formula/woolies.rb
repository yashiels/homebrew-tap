class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.1/woolies-v1.1.1-darwin-arm64.tar.gz"
      sha256 "ef869744495b7edf6f462734452c754631d058d537e4e92783a329b0965cdf96"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--version"
  end
end
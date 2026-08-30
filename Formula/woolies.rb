class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.0/woolies-v1.1.0-darwin-arm64.tar.gz"
      sha256 "b074de8f2236b9acebe7b004b1de481344d2f0ea525d551e4105c5a7df5b0e17"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--version"
  end
end

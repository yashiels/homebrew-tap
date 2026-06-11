class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.0.2/woolies-v1.0.2-darwin-arm64.tar.gz"
      sha256 "abe224f0356ea462b9451ac15c012968308ba5adb10e84679339fe69adad2b02"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--version"
  end
end

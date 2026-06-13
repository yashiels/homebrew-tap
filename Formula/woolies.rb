class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies-v#{version}-darwin-arm64.tar.gz"
      sha256 "abe224f0356ea462b9451ac15c012968308ba5adb10e84679339fe69adad2b02"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v#{version}/woolies-v#{version}-linux-x64.tar.gz"
      sha256 "6ae93683e622bdcc0db2e75027aa83c19065c3292a57b8e4f841c604683eb040"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/woolies --version")
  end
end

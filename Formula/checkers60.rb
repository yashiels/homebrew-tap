class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.1/checkers60-v0.2.1-darwin-arm64.tar.gz"
      sha256 "723f321fa0810c939271e3ed6f2128aedf9c4abb9145a69bb3cda53cc976024f"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--version"
  end
end

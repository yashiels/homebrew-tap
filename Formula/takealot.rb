class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.1/takealot-v0.6.1-darwin-arm64.tar.gz"
      sha256 "e92a20b3b2c89c7b86dbd0c24f6c1056a8e12ce4cde7d283bae54281c87c05d1"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end
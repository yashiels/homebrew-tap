class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.1.1/takealot-v0.1.1-darwin-arm64.tar.gz"
      sha256 "f2161911f7f8d9119e86b6c090a24c20ef8204ac39d1b9aaf2678f897a16574d"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.3.0/takealot-v0.3.0-darwin-arm64.tar.gz"
      sha256 "e24453ca9405cd5dfdac011c7e4b33a3243f86c43b46cfc95525bbbfb215d02d"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

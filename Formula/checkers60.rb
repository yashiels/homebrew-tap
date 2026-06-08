class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.1.1/checkers60-v0.1.1-darwin-arm64.tar.gz"
      sha256 "3d763715d00c87d18d40e289e5960c736fe6c4081c259e1de514fcd0537a025e"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--version"
  end
end

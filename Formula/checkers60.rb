class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.0/checkers60-v0.2.0-darwin-arm64.tar.gz"
      sha256 "d11c4eaf520daa2bb5af346bf8b75d5a112aa8bba133ea24b1d4b69f10ba8ddf"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--version"
  end
end

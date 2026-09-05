class Postnet < Formula
  desc "Track PostNet parcels from the command line"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.2/postnet-v1.0.2-darwin-arm64.tar.gz"
      sha256 "84f71740d0a0a281361e90b4c560024cbf05d5851d96286339e009e85ecf3589"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    system bin/"postnet", "--version"
  end
end
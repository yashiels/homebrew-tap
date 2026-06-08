class Postnet < Formula
  desc "Track PostNet parcels from the command line"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.1/postnet-v1.0.1-darwin-arm64.tar.gz"
      sha256 "049f6560dceab45a9256602dade6c2f524b9e5c864077b488965cbba3bab4a69"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    system bin/"postnet", "--version"
  end
end

class Postnet < Formula
  desc "Track PostNet parcels from the command line"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet-v#{version}-darwin-arm64.tar.gz"
      sha256 "049f6560dceab45a9256602dade6c2f524b9e5c864077b488965cbba3bab4a69"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/postnet-cli/releases/download/v#{version}/postnet-v#{version}-linux-x64.tar.gz"
      sha256 "964054883eccd175bbf685142fe17906c29da531268a3198ddfcb7193ecb30e8"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/postnet --version")
  end
end

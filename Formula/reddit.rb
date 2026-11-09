class Reddit < Formula
  desc "Reddit from the terminal, authenticating as the official Android app"
  homepage "https://github.com/yashiels/reddit-cli"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "93385ae41dd66dd944c99e7fde4f073537c1c455cc320ee90c508fb9038ef815"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "bb11dc06cce621b12725839ea6d0abd32f71acbf5d5705d7521f67e295479a91"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_arm64.tar.gz"
      sha256 "c3d2263b666c9a7ce8466cdd487ad50972c119f7abe6e6e046d6cb34b1eadfa4"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_amd64.tar.gz"
      sha256 "33cc7bea8b11b2306fc9dd2ee747de34eb95d9e1e99bfb9c816219ec1bdab128"
    end
  end

  def install
    bin.install "reddit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddit --version")
  end
end

class Reddit < Formula
  desc "Reddit from the terminal, authenticating as the official Android app"
  homepage "https://github.com/yashiels/reddit-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "b48f661e55aa89b4d72d80b9c731c90f6ad5330b022f4ba20baa18731b9f5d4f"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "b66100115342dc1f69582b56a320b7a9802c6c01b71b13dc232c4a7a76bdc458"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_arm64.tar.gz"
      sha256 "ee5f4026c36a30e501a0e1d4b4d08329c685a83a3e4e5117dab8cffdc5399f0f"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_amd64.tar.gz"
      sha256 "a8159dcecae391b4e21b97f9412d1cc9b2a6b3456ed4baf29d04b3952b866526"
    end
  end

  def install
    bin.install "reddit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddit --version")
  end
end

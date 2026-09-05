class Twt < Formula
  desc "X/Twitter from the terminal — built on the private GraphQL API"
  homepage "https://github.com/yashiels/twitter-cli"
  version "0.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "2ec8452e6d7a815214c23651736489017e71be4092e320cb2f64edb62b5aedc0"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "1bea0bd43a1c025db56a70f21f4eb2c314a35fc7881b34b9d6b2ff2c7682e4c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_arm64.tar.gz"
      sha256 "67ce7a89b5b8220b14d035c0dbafa62a17bff8a969a036fb2c8959bcd59090be"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_amd64.tar.gz"
      sha256 "2637532edf1447ad853565cab506a68e7ba4a71d4b8ad8ec4dc286a7e84b1bc0"
    end
  end

  def install
    bin.install "twt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twt --version")
  end
end

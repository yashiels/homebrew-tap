class Reddit < Formula
  desc "Reddit from the terminal, authenticating as the official Android app"
  homepage "https://github.com/yashiels/reddit-cli"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "cdaefb2ab4d34e64e1d315033658b62229f4ab63345c5b4b56f5b7210814f7b0"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "cabe8703ec0382399f54c72e0ba3e03492fbafb3ef88c26983b45627abdf6b62"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_arm64.tar.gz"
      sha256 "45163ff87c5320bd3ffdc5909971912eca91abdd035e139f216ab3cfd538909e"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_amd64.tar.gz"
      sha256 "03e09280442a17da50ba2aa69520b5f160ad97996a8f0452f2dbed965355c492"
    end
  end

  def install
    bin.install "reddit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddit --version")
  end
end

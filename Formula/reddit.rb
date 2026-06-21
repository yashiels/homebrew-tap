class Reddit < Formula
  desc "Reddit from the terminal, authenticating as the official Android app"
  homepage "https://github.com/yashiels/reddit-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "35faa293549c2ac990d40a400ac435db7a09b0fcc955f4312f1f300cff914844"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "a7f7308a4b51861e9f2bb1311a4e63f5943185fe37763665e4000b521d62b41b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_arm64.tar.gz"
      sha256 "9694c02639abff3943feefaa5d73d76dbfd80104c2a003f5995d2e1478989fda"
    else
      url "https://github.com/yashiels/reddit-cli/releases/download/v#{version}/reddit-cli_#{version}_linux_amd64.tar.gz"
      sha256 "1e738be9da730e5ece0bfa4ea635475fca08b64360439710fe5d6725f86f878f"
    end
  end

  def install
    bin.install "reddit"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/reddit --version")
  end
end

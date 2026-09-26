class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.7.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.1/takealot-v0.7.1-darwin-arm64.tar.gz"
      sha256 "ee215e4f38c7a1eaea2ce4071b86e4508e02e53be78832dc2592699d33a0a5d6"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.1/takealot-v0.7.1-darwin-amd64.tar.gz"
      sha256 "999b7e1023587c60163aa6d42c552482708f7525324955d4663467d0beeee961"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.1/takealot-v0.7.1-linux-arm64.tar.gz"
      sha256 "bc24b6f3ec94b519e486a20ca13e3c088a497e1a87f76cc7a03a2484bcedc2dd"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.1/takealot-v0.7.1-linux-amd64.tar.gz"
      sha256 "3a8ce9651f989ebf352d0157196b21b892f2256163674c690fbdcc4e002c9f97"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

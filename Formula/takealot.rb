class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.8.0/takealot-v0.8.0-darwin-arm64.tar.gz"
      sha256 "58c5b8aa096b5c623ed0e9e197d596dc1c01112b867c08810935241fb7c9c702"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.8.0/takealot-v0.8.0-darwin-amd64.tar.gz"
      sha256 "9979a1b3b825971c72b0156f781b9cb17ad28718d96f96de5529047c068484aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.8.0/takealot-v0.8.0-linux-arm64.tar.gz"
      sha256 "0fa5e7f521db1d2cfce8086bb5533c60f2b32ade54c7d97b2a5f522e55872739"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.8.0/takealot-v0.8.0-linux-amd64.tar.gz"
      sha256 "b29a34a80ef829c260f5e0e43ffd82ca332fa59fa9fe28c3ea603ed08da49347"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.2/checkers60-v0.2.2-darwin-arm64.tar.gz"
      sha256 "096404d2dc3048345f446704aa7d62d67e4ae94ea3bacf0ac8a043873decff3e"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.2/checkers60-v0.2.2-darwin-amd64.tar.gz"
      sha256 "809b4486078177c2379fde9aea7b34c25d47d54adc501e8499f50f3d2b7d9710"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.2/checkers60-v0.2.2-linux-arm64.tar.gz"
      sha256 "617bfad8782362bab0396ad73601c0057ece0757577db9487adf9d180609fbae"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.2/checkers60-v0.2.2-linux-amd64.tar.gz"
      sha256 "69cc660477ca7a24f5c4375ffba5e233bc423fb06e7388f96712a28442a2684a"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--version"
  end
end

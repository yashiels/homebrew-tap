class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.0/takealot-v0.6.0-darwin-arm64.tar.gz"
      sha256 "dbdb43e24b59c28b06a98385cf4c33295f9071bbe58a30e1d93dec8997e8e487"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

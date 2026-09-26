class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.0/takealot-v0.7.0-darwin-arm64.tar.gz"
      sha256 "1a4fea4a743569c4133851c469809858ff7f127f92fb6f298b05ddce5fa2d9dd"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.0/takealot-v0.7.0-darwin-amd64.tar.gz"
      sha256 "1e9e584fc67cfc2b28280293c3a40dd0dbadc4b0c97f88a61e9ace4c7218a91f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.0/takealot-v0.7.0-linux-arm64.tar.gz"
      sha256 "c06c194aa330f04c416ab07c414821e66d00bb6b079759fd8a4c32ef7e82f8f0"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.0/takealot-v0.7.0-linux-amd64.tar.gz"
      sha256 "e1a7a3d981a4d48a192472ca466a6b58ee77f29966cbe8ccc7ecbd0877d81723"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

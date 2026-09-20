class Postnet < Formula
  desc "Track PostNet parcels from the command line"
  homepage "https://github.com/yashiels/postnet-cli"
  version "1.0.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.4/postnet-v1.0.4-darwin-arm64.tar.gz"
      sha256 "c6453432f1c9a08c8afc2ddedcbc7c761c8df8ea456690677c4776428074a002"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.4/postnet-v1.0.4-darwin-amd64.tar.gz"
      sha256 "cf04039d0725d971fec2638d4e51e6c104f7c09e69d78d2e1280acd178cd533b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.4/postnet-v1.0.4-linux-arm64.tar.gz"
      sha256 "fd954f4ff81f3e4376fcc97d5d726cdd94cc61330f233bf8eaa6b33b0f5eb035"
    else
      url "https://github.com/yashiels/postnet-cli/releases/download/v1.0.4/postnet-v1.0.4-linux-amd64.tar.gz"
      sha256 "04c4aeb00e40ae6b041c9396232467565ef736bdcbb87ecea8ab2ad67cfacf32"
    end
  end

  def install
    bin.install "postnet"
  end

  test do
    system bin/"postnet", "--version"
  end
end

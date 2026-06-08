class Checkers60 < Formula
  desc "Shop Checkers Sixty60 from the terminal"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--help"
  end
end

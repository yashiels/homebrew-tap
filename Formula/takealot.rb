class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-darwin-arm64.tar.gz"
      sha256 "a788838d68808ab50a2cc97c9647b343bdf7af962c1d49b56687dae61cd20b7c"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-linux-x64.tar.gz"
      sha256 "57d22f1e9b92082bf7f845391adc06f93c9c5e4e263379325a3f59c06407a8a7"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takealot --version")
  end
end

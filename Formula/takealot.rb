class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-darwin-arm64.tar.gz"
      sha256 "f2161911f7f8d9119e86b6c090a24c20ef8204ac39d1b9aaf2678f897a16574d"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/takealot-cli/releases/download/v#{version}/takealot-v#{version}-linux-x64.tar.gz"
      sha256 "f56b86cd20542cddc7a7152bbbce1caca674e429591e3e26dbef6356ade9d3ea"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/takealot --version")
  end
end

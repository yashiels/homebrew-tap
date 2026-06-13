class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60-v#{version}-darwin-arm64.tar.gz"
      sha256 "3d763715d00c87d18d40e289e5960c736fe6c4081c259e1de514fcd0537a025e"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v#{version}/checkers60-v#{version}-linux-x64.tar.gz"
      sha256 "c0aaaacc6cf06b67357af8ca5ea65f066ada9984af9ea82a7cddbc5e87f0c726"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/checkers60 --version")
  end
end

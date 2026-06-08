class Lnk < Formula
  desc "LinkedIn CLI — search jobs, view profiles, apply from the terminal"
  homepage "https://github.com/yashiels/linkedin-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lnk --version")
  end
end

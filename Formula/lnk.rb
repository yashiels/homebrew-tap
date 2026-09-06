class Lnk < Formula
  desc "LinkedIn CLI — search jobs, view profiles, apply from the terminal"
  homepage "https://github.com/yashiels/linkedin-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_arm64.tar.gz"
      sha256 "cc4a2d0624d8ce9c71c8cf919de5b6f3d828a2be50208671a6669ca6bbe08b81"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_amd64.tar.gz"
      sha256 "7039ffc33f51949f6727c407c9a39410a8efd94cb550e3b9586ce56087278385"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_arm64.tar.gz"
      sha256 "c05237fe113a0f345074adaffce02f89fcbcd8b35f6e32ba0da9f14f86b8fe2b"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_amd64.tar.gz"
      sha256 "4a13e6e4c10faadb6b3344811ab192ca4ed7e4d95af431309ed36bbf0c842d63"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lnk --version")
  end
end

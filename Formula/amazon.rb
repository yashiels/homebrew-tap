class Amazon < Formula
  desc "Read-only Amazon South Africa shopping CLI"
  homepage "https://github.com/yashiels/amazon-za-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/amazon-za-cli/releases/download/v#{version}/amazon_#{version}_darwin_arm64.tar.gz"
      sha256 "80759427f6cd05dc053e843ad424b35da6b21fbf0209d0334bf884dcf7da5818"
    else
      url "https://github.com/yashiels/amazon-za-cli/releases/download/v#{version}/amazon_#{version}_darwin_amd64.tar.gz"
      sha256 "f239da081e3ab5e5e9880cf6d9ea921164f6806caf3f4114d5b04458e32f2f30"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/amazon-za-cli/releases/download/v#{version}/amazon_#{version}_linux_arm64.tar.gz"
      sha256 "b9f0d1630c6f02f44517649bd18a1ee5a1657999cf93d111ff5af2c8fad28a7b"
    else
      url "https://github.com/yashiels/amazon-za-cli/releases/download/v#{version}/amazon_#{version}_linux_amd64.tar.gz"
      sha256 "724d9de8becfc649e8c6fa6ba8c11e9b76399b3a55dcd82c0d1adea8faddb15e"
    end
  end

  def install
    bin.install "amazon"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/amazon --version")
  end
end

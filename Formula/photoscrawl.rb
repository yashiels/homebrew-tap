class Photoscrawl < Formula
  desc "Local-first Apple Photos library archive and search for agents"
  homepage "https://github.com/openclaw/photoscrawl"
  version "0.5.1"

  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openclaw/photoscrawl/releases/download/v#{version}/photoscrawl_#{version}_darwin_arm64.tar.gz"
      sha256 "82962d2af5add151fae64a64d59b3f2e1f1051d68d8740eb50cf4f8ff27516eb"
    else
      url "https://github.com/openclaw/photoscrawl/releases/download/v#{version}/photoscrawl_#{version}_darwin_amd64.tar.gz"
      sha256 "9a239114342de0d25ec6c9d61cf93f0c90e131ed80d0467b5270cfe3222bc417"
    end
  end

  def install
    bin.install "photoscrawl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/photoscrawl --version")
  end
end

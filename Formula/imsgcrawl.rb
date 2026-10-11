class Imsgcrawl < Formula
  desc "Local-first iMessage archive crawler for agents"
  homepage "https://github.com/openclaw/imsgcrawl"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/openclaw/imsgcrawl/releases/download/v#{version}/imsgcrawl_#{version}_darwin_arm64.tar.gz"
      sha256 "2e6eeb5220db61127c449a52141ea08b85c96c541aeee097c1a77c1ddf1b2631"
    else
      url "https://github.com/openclaw/imsgcrawl/releases/download/v#{version}/imsgcrawl_#{version}_darwin_amd64.tar.gz"
      sha256 "43af89b0d016e3bdb4240dd24dd24b76f2d966a55bb9c58c78882723fa8f5a63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/openclaw/imsgcrawl/releases/download/v#{version}/imsgcrawl_#{version}_linux_arm64.tar.gz"
      sha256 "c72e62e4ad39af6baebc00a6b2294e30f26ee70093e62de35f982e3e7afe8b13"
    else
      url "https://github.com/openclaw/imsgcrawl/releases/download/v#{version}/imsgcrawl_#{version}_linux_amd64.tar.gz"
      sha256 "5c913abba189b05288b2eff11754d262545d3ae09f567663c02f39c876c121af"
    end
  end

  def install
    bin.install "imsgcrawl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imsgcrawl --version")
  end
end

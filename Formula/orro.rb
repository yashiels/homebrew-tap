class Orro < Formula
  desc "Control your Tuya standing desk from the terminal"
  homepage "https://github.com/yashiels/orro-cli"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_arm64.tar.gz"
      sha256 "345d1eac2296f8de6c2ba75474816d85e3f5d3e670ba2002b9531a22f4f51beb"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_amd64.tar.gz"
      sha256 "737a8f1347eb3c5251eb55cfa68a7597e606e06947925da82fc504f51006a39f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_arm64.tar.gz"
      sha256 "f6b31a8fef4a7fe55e8c96ba94fbbdd94b548aba2b3e82278d13243a95bb9c28"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_amd64.tar.gz"
      sha256 "25930c4f913528655fff25159eaa34d4e9d5f746a01971e6fbce08e37e5a9679"
    end
  end

  def install
    bin.install "orro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orro --version")
  end
end

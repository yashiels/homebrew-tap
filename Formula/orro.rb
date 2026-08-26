class Orro < Formula
  desc "Control your Tuya standing desk from the terminal"
  homepage "https://github.com/yashiels/orro-cli"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_arm64.tar.gz"
      sha256 "e2586a3be411edf9792a30e5a53514efb7f7ec627c4a0004ef3deab614125db7"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_amd64.tar.gz"
      sha256 "bd759fba6ca2721037faf6261c71a4f9ee4f8049bf6c52d237572cab751aeac9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_arm64.tar.gz"
      sha256 "47f84380372a50c07b5e8812d9393d1dda814fda312cb264860863aaa7b2cf1f"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_amd64.tar.gz"
      sha256 "6d2a2fef80634add461b76dc50e4ff86ed65f0638fdcafb3e3b179db8dd1933a"
    end
  end

  def install
    bin.install "orro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orro --version")
  end
end

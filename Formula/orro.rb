class Orro < Formula
  desc "Control your Tuya standing desk from the terminal"
  homepage "https://github.com/yashiels/orro-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_arm64.tar.gz"
      sha256 "b4e2c16e92a25348f4de925bcb88f6bb9eebbde5906aef782f24feb655404c4f"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_darwin_amd64.tar.gz"
      sha256 "7f31f2ac8986390cbac5e1c1210f7e1fa07a59649d135e833cedcffc3d596376"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_arm64.tar.gz"
      sha256 "47609aa29db9515d838d5883b177f61b5a714cee8efc4fdf332cef6686df271a"
    else
      url "https://github.com/yashiels/orro-cli/releases/download/v#{version}/orro_#{version}_linux_amd64.tar.gz"
      sha256 "e98dbc98e4e1b4da37c8ed256ec0424323e8dd9ae27dd217d739d5de88e7dfe7"
    end
  end

  def install
    bin.install "orro"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/orro --version")
  end
end

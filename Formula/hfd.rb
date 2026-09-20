class Hfd < Formula
  desc "Order lunch from Home Food Depo"
  homepage "https://github.com/yashiels/home-food-depo-cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "3ff5276500f11906bc7373a9c8bd693386481ad3a33177e4ecfffeeeb789a695"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "f4de43612e873bcfb3b852f37461be4e4a82224a676ee6995d14700f5ada2d0e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_arm64.tar.gz"
      sha256 "f4a31b11ae7a9f45010a0f4273f1bd5639f2c3fa621c53aefe51e14ed3bdb31f"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_amd64.tar.gz"
      sha256 "2e2e6bd91d39d35527b50c5103a93c17fbc58cc3e6069509db6d8356331d5f44"
    end
  end

  def install
    bin.install "hfd"
  end

  test do
    system "#{bin}/hfd", "--help"
  end
end

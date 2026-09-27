class Hfd < Formula
  desc "Order lunch from Home Food Depo"
  homepage "https://github.com/yashiels/home-food-depo-cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "959bbf3d9188eb3b0442150449325430a8a816df3a77f6e66edcc82b12fdf99d"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "a87a43f8097c3d395a2d33d8717e14a12c6ad3a655937f83571276d6e1547c85"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_arm64.tar.gz"
      sha256 "00a84a16a38e2217c59c01e85b8d782baba6bd5f9a4b5e4a5aff837f439b1422"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_amd64.tar.gz"
      sha256 "a1da39509c1776448d6f4faa9f7d95225935d5f5bdb913da95531319456c6b14"
    end
  end

  def install
    bin.install "hfd"
  end

  test do
    system "#{bin}/hfd", "--help"
  end
end

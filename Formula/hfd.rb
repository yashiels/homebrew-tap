class Hfd < Formula
  desc "Order lunch from Home Food Depo"
  homepage "https://github.com/yashiels/home-food-depo-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "7e8e0457f5dd5070bc558a1bdaa083c961d8063f02d6fedd25108028f8bd6d04"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "7b4ae3d00afa04598608e8e90001c82f77567b059cf7614831d1369acb545c77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_arm64.tar.gz"
      sha256 "b9327ee81d15127f776357f48e5ab76ee5e266249d235dc838ea012e48505333"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_amd64.tar.gz"
      sha256 "4a945954e4cdd9b4cd1c0c07e3c04cc6260b92b4cef970ba22f928f3465e80ac"
    end
  end

  def install
    bin.install "hfd"
  end

  test do
    system "#{bin}/hfd", "--help"
  end
end

class Hfd < Formula
  desc "Order lunch from Home Food Depo"
  homepage "https://github.com/yashiels/home-food-depo-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "608b33a30228f56a127505a0e4105cbf169f71e00799e54228cbc6515b68495e"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "a987ee6eae64b5dbf9a13318c9066495f51cf49d55d662cae2eed6559fe79ec2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_arm64.tar.gz"
      sha256 "a3b0bf80b395013bda877195c7f59189ad47d0392b6cfa29f374ee2d695517f5"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_amd64.tar.gz"
      sha256 "19c6b95fe3c24eeb90cc8dfe5155b4f89bdd0acabe432ed3a7bca60a68cc566d"
    end
  end

  def install
    bin.install "hfd"
  end

  test do
    system "#{bin}/hfd", "--help"
  end
end

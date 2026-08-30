class Hfd < Formula
  desc "Order lunch from Home Food Depo"
  homepage "https://github.com/yashiels/home-food-depo-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "071e4a4030920dc3f81d224df95c096bee9a7ad7fcb8d8e5793e874d29976536"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "894f6ad90189b6e98af561623157427ceb9824ea6f08b6073bce97efb2de66ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_arm64.tar.gz"
      sha256 "3be348bf0579e3e725dcb51c6347adab267e119c611b65dad92cb56fecf094c7"
    else
      url "https://github.com/yashiels/home-food-depo-cli/releases/download/v#{version}/home-food-depo-cli_#{version}_linux_amd64.tar.gz"
      sha256 "f2a7aa7322a35e102243faf8bc294b36ef10837ae3bc819fc234d6239bda00a5"
    end
  end

  def install
    bin.install "hfd"
  end

  test do
    system "#{bin}/hfd", "--help"
  end
end

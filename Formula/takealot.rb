class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.9.0/takealot-v0.9.0-darwin-arm64.tar.gz"
      sha256 "93373a19f935ee619b4afa2dce44d69fdf3f73eec7c9f9cc8c1da4985eb3de13"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.9.0/takealot-v0.9.0-darwin-amd64.tar.gz"
      sha256 "57fea64292f17dd6ad6296c21656701f64ce254f96717066229c9ce23c125f95"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.9.0/takealot-v0.9.0-linux-arm64.tar.gz"
      sha256 "794bfc0322bcd2369d297b940cfccb40e14d84d0114d9ca001b8d3bbced32651"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.9.0/takealot-v0.9.0-linux-amd64.tar.gz"
      sha256 "8ba0091e4a95eec055f6f6f07889a47c1089f713432a06a84c28c8fa8ec11053"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

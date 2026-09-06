class Woolies < Formula
  desc "CLI for Woolworths Dash grocery delivery"
  homepage "https://github.com/yashiels/woolworths-cli"
  version "1.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.2/woolies-v1.1.2-darwin-arm64.tar.gz"
      sha256 "1755def88690f4fb5dfb24349eee8c3778f4a5966493547a3dd390bd9e388158"
    else
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.2/woolies-v1.1.2-darwin-amd64.tar.gz"
      sha256 "411b30d262aae4ffcadea4cd609df2c75fa5b0af64e3027e835b6f4222fa4955"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.2/woolies-v1.1.2-linux-arm64.tar.gz"
      sha256 "d12cc217657d0f411c265d81245d2f9a05a429ae3924d35184b33befb49e2112"
    else
      url "https://github.com/yashiels/woolworths-cli/releases/download/v1.1.2/woolies-v1.1.2-linux-amd64.tar.gz"
      sha256 "edc472672b5058dd1bd2bf4c87e6df247b414becc814c8a3bb420c6772b5f61e"
    end
  end

  def install
    bin.install "woolies"
  end

  test do
    system bin/"woolies", "--version"
  end
end

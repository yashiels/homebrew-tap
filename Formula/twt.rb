class Twt < Formula
  desc "X/Twitter from the terminal — built on the private GraphQL API"
  homepage "https://github.com/yashiels/twitter-cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "673a01d0550bdf6fd04ab02a54da88c371cb021d40b8b1f82d6ecad0831d1106"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "fb9be3f5234ae2ab379333bbe4edbb7176110319f87231b81c6b24a968ce760b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_arm64.tar.gz"
      sha256 "ca514bf512a8e3980c4c698612c85963d577f7f73e5622ca9e7044e6b330a2c9"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_amd64.tar.gz"
      sha256 "9a79617aa63d64a9eec82deeb12b33dfaa10901aafe1760ca6b8dcf6d961bf35"
    end
  end

  def install
    bin.install "twt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twt --version")
  end
end

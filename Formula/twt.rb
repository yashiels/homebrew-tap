class Twt < Formula
  desc "X/Twitter from the terminal — built on the private GraphQL API"
  homepage "https://github.com/yashiels/twitter-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_arm64.tar.gz"
      sha256 "62ecf2f9e5d82896ef56616c63c03beae69e6a8a2c0bfe7f331a8a8af3f40e93"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_darwin_amd64.tar.gz"
      sha256 "ebdd07069842c49b65244f38dfc1926ec57203b723cc73b82eaf6c248a0fd214"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_arm64.tar.gz"
      sha256 "f2826095d54d872a2cde78f503c1f804e0c570ef4d51133c57aafff87449b90b"
    else
      url "https://github.com/yashiels/twitter-cli/releases/download/v#{version}/twitter-cli_#{version}_linux_amd64.tar.gz"
      sha256 "fb291ded3ee6d114a3110637efa0367613635732b303cea928eee62ff8e3fdd7"
    end
  end

  def install
    bin.install "twt"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/twt --version")
  end
end

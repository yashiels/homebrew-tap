class Lnk < Formula
  desc "LinkedIn CLI — search jobs, view profiles, apply from the terminal"
  homepage "https://github.com/yashiels/linkedin-cli"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_arm64.tar.gz"
      sha256 "f235cfb642f76fee4b4282e9382626c53640efbc6e7c376d871cd1e26ff00272"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_amd64.tar.gz"
      sha256 "5719ef6d45e846388ba88567c22b731f038254ea78c8dac5217dab2c59046a7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_arm64.tar.gz"
      sha256 "a627b7d199b935df4c4e98d048bf3d32625fa02006967e9a8d5e3b8a0a5b81f3"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_amd64.tar.gz"
      sha256 "9e7cc6d99748f01803f2375f93e74142307eb556e205b415d38a040d5eaeb7d7"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lnk --version")
  end
end

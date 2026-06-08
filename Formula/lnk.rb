class Lnk < Formula
  desc "LinkedIn CLI — search jobs, view profiles, apply from the terminal"
  homepage "https://github.com/yashiels/linkedin-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_arm64.tar.gz"
      sha256 "8bfde18d6fa046a9a762e1bbfdacd8497f5ddcfd9fab043eb6e312d456f1572d"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_amd64.tar.gz"
      sha256 "315bbbad34dee422764c943fa061007a019c118a6e665b76dc68d341c8cc67d5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_arm64.tar.gz"
      sha256 "9e4524a4a2d6fc419aeb70fd14c13b8f3fe8d9237c516a2296528a30266f4347"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_amd64.tar.gz"
      sha256 "341663ee123d0f9767c7d7ee1540072d70ca2c3e1e33904d693bef7ca59b99af"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lnk --version")
  end
end

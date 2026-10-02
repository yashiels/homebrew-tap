class Lnk < Formula
  desc "LinkedIn CLI — search jobs, view profiles, apply from the terminal"
  homepage "https://github.com/yashiels/linkedin-cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_arm64.tar.gz"
      sha256 "ebd7751c1a94f96ca6fcb33142ec3fe568cfa91a59d12345e4f7a0ab3f0e8aee"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_darwin_amd64.tar.gz"
      sha256 "f8e10831352b25b671378f623b1d1f58a279c073185ae6b4ed783666f2725b7c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_arm64.tar.gz"
      sha256 "e7fc9430a38f7be6a968650fb43f6cac6f107c8b5fcd7f73ecc1060d0620f49a"
    else
      url "https://github.com/yashiels/linkedin-cli/releases/download/v#{version}/lnk_#{version}_linux_amd64.tar.gz"
      sha256 "714e19a52f0e12f5d3613dd662e7fef336d32fce7325d612084e760b11172592"
    end
  end

  def install
    bin.install "lnk"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lnk --version")
  end
end

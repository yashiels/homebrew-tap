class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.7.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.2/takealot-v0.7.2-darwin-arm64.tar.gz"
      sha256 "dff5e97363947750500ebc273f2541b0d79a59b39502a89688c97f37639ccc2f"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.2/takealot-v0.7.2-darwin-amd64.tar.gz"
      sha256 "b34f6f65f55344f15c7a09963847d117a998805dc844eda6e225bdbe6035877a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.2/takealot-v0.7.2-linux-arm64.tar.gz"
      sha256 "cfb28a8b93c21589c3246286f6b1ad01fffbe963fdf00c6ac9de4a15bf15c94e"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.7.2/takealot-v0.7.2-linux-amd64.tar.gz"
      sha256 "87a5dba7290e99f36753e3f977b26d710399d9be968fa93d97e2c4643732e8a1"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

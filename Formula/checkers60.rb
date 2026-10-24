class Checkers60 < Formula
  desc "CLI for Checkers Sixty60 grocery delivery"
  homepage "https://github.com/yashiels/checkers60-cli"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.3/checkers60-v0.2.3-darwin-arm64.tar.gz"
      sha256 "745196436cfae97ca6387900778ac03cc107ef4985d69b28c885d819caa15687"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.3/checkers60-v0.2.3-darwin-amd64.tar.gz"
      sha256 "820274344c3493c988950eb8ec0275f8bd85d7620ce3da51aa3f3792f5d69190"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.3/checkers60-v0.2.3-linux-arm64.tar.gz"
      sha256 "24b4f78864ee1e52dd95e5be9132e9af82ab93bd5128d0d18633f4491f6a72b8"
    else
      url "https://github.com/yashiels/checkers60-cli/releases/download/v0.2.3/checkers60-v0.2.3-linux-amd64.tar.gz"
      sha256 "5e72e684a06d5110f407776b3631437f7a916f6c135a1871f3890d32add85b3c"
    end
  end

  def install
    bin.install "checkers60"
  end

  test do
    system bin/"checkers60", "--version"
  end
end

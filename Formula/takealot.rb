class Takealot < Formula
  desc "CLI for Takealot.com"
  homepage "https://github.com/yashiels/takealot-cli"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.2/takealot-v0.6.2-darwin-arm64.tar.gz"
      sha256 "77b9a8d8d6b1194de175e45e0ca34fb45c80f87973118b67575b50cb104d52a3"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.2/takealot-v0.6.2-darwin-amd64.tar.gz"
      sha256 "461363a207e8350e9d67504226d275a8288bbe3b19c2f0837add738659ec93df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.2/takealot-v0.6.2-linux-arm64.tar.gz"
      sha256 "5a14597496a02953c523495218e99b6d25a4c2700258b5b3ff74050d1bf0997b"
    else
      url "https://github.com/yashiels/takealot-cli/releases/download/v0.6.2/takealot-v0.6.2-linux-amd64.tar.gz"
      sha256 "85c9f3c2d5d999dc07e640cf2bce65bec269ed60a15590b23d979e886b98253e"
    end
  end

  def install
    bin.install "takealot"
  end

  test do
    system bin/"takealot", "--version"
  end
end

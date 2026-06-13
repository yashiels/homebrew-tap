class Orro < Formula
  desc "Control your Tuya standing desk from the terminal"
  homepage "https://github.com/yashiels/orro-cli"
  url "https://github.com/yashiels/orro-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "56f7ff82004fb235a98e3e7186dcc0a03f15f563f54b02cf22add6d117cbcdad"
  license "MIT"

  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    venv.pip_install_and_link buildpath
  end

  test do
    system bin/"orro", "--help"
  end
end

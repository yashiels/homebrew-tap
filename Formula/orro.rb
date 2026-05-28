class Orro < Formula
  include Language::Python::Virtualenv

  desc "Control your Tuya standing desk from the terminal"
  homepage "https://github.com/yashiels/orro-cli"
  url "https://files.pythonhosted.org/packages/source/o/orro/orro-0.1.0.tar.gz"
  sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with `sha256sum orro-0.1.0.tar.gz` after download
  license "MIT"

  depends_on "python@3.12"

  # ---------------------------------------------------------------------------
  # Direct dependencies
  # ---------------------------------------------------------------------------

  # tinytuya >=1.18.0
  # https://pypi.org/pypi/tinytuya/json
  resource "tinytuya" do
    url "https://files.pythonhosted.org/packages/source/t/tinytuya/tinytuya-1.18.0.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  # requests >=2.28.0
  # https://pypi.org/pypi/requests/json
  resource "requests" do
    url "https://files.pythonhosted.org/packages/source/r/requests/requests-2.32.3.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  # pyyaml >=6.0
  # https://pypi.org/pypi/PyYAML/json
  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/source/P/PyYAML/PyYAML-6.0.2.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  # ---------------------------------------------------------------------------
  # Transitive dependencies (requests)
  # ---------------------------------------------------------------------------

  resource "certifi" do
    url "https://files.pythonhosted.org/packages/source/c/certifi/certifi-2024.12.14.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/source/c/charset-normalizer/charset_normalizer-3.4.1.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/source/i/idna/idna-3.10.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/source/u/urllib3/urllib3-2.3.0.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  # ---------------------------------------------------------------------------
  # Transitive dependencies (tinytuya)
  # ---------------------------------------------------------------------------

  resource "cryptography" do
    url "https://files.pythonhosted.org/packages/source/c/cryptography/cryptography-44.0.0.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  resource "cffi" do
    url "https://files.pythonhosted.org/packages/source/c/cffi/cffi-1.17.1.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  resource "pycparser" do
    url "https://files.pythonhosted.org/packages/source/p/pycparser/pycparser-2.22.tar.gz"
    sha256 "PLACEHOLDER_UPDATE_WITH_REAL_SHA256" # TODO: replace with real sha256
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin/"orro", "--help"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.3/bytehouse-v1.5.17.3-darwin-amd64"
  sha256 "02643c2e7a59a4447f912d854bd29d6b3bcf4f515ed12b64261ed8b26839dabd"
  license "Apache 2.0"
  version "v1.5.17.3"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17.3-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

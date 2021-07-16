class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.3/bytehouse-darwin-amd64"
  sha256 "78cfffe4460da872ca6d1ba9d49260b1397dd5304c3a0ad9ca443762240e7b5e"
  license "Apache 2.0"
  revision 1

  bottle :unneeded

  def install
    File.rename("bytehouse-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

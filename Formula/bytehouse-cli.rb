class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.16/bytehouse-v1.5.16-darwin-amd64"
  sha256 "91ae5f531c01562a49c88dd9b09d0a076281b36424ba5512abc85f20702b9c59"
  license "Apache 2.0"
  version "v1.5.16"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.16-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

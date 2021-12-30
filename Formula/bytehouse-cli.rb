class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.18.1/bytehouse-v1.5.18.1-darwin-amd64"
  sha256 "2463ce58446640cd519d22fcfe3db2161b3469e6244d52fcc45da4fecbf5f4ac"
  license "Apache 2.0"
  version "v1.5.18.1"

  def install
    File.rename("bytehouse-v1.5.18.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

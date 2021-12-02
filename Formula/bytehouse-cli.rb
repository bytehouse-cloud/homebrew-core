class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.10/bytehouse-v1.5.17.10-darwin-amd64"
  sha256 "a5a4d3b931b0aa86827ad11b4ba215d61aef138acf3831e417239a46a36dec1d"
  license "Apache 2.0"
  version "v1.5.17.10"

  def install
    File.rename("bytehouse-v1.5.17.10-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.7/bytehouse-v1.5.17.7-darwin-amd64"
  sha256 "c8d9115b4635a65a623c55498514cc94806753738f5e3b28ed61886e67c16992"
  license "Apache 2.0"
  version "v1.5.17.7"

  def install
    File.rename("bytehouse-v1.5.17.7-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

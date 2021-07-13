class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url ""
  sha256 ""
  license "Apache 2.0"

  def install
    File.rename("bytehouse-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end
end

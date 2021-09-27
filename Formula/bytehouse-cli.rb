class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.15.1/bytehouse-v1.5.15.1-darwin-amd64"
  sha256 "f6ea660c5e2eb168bb3c472b19b129e8b36acc03a290e491979c9979ff649658"
  license "Apache 2.0"
  version "v1.5.15.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.15.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

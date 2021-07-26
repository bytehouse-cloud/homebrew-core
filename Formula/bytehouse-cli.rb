class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.6.1/bytehouse-v1.5.6.1-darwin-amd64"
  sha256 "cd113fb8f98d3afae724d2223b47ded72961f39fbfa80ee44025acfc250db547"
  license "Apache 2.0"
  version "v1.5.6.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.6.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

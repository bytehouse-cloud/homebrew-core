class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.4.1/bytehouse-darwin-amd64"
  sha256 "0c90fee9072b210ffcceea1a8e01be097603ace685ddf3a65a8deab1da8cad2e"
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

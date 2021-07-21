class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.4/bytehouse-darwin-amd64"
  sha256 "04a6a742c53ca89d3a9209a17f5b911585fc9e466fc8b08e050ad51d33e09556"
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

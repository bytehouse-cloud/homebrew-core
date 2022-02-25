class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.19.1/bytehouse-1.5.19.1-darwin-amd64"
  sha256 "d929c440b26cac242d4d017a67789fb0f869168edf9a139d97e7338e2659bb85"
  license "Apache 2.0"
  version "1.5.19.1"

  def install
    File.rename("bytehouse-1.5.19.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

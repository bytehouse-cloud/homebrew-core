class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.7/bytehouse-v1.5.7-darwin-amd64"
  sha256 "fad6acfc94fc19342ae704d0a19f5e9c1354297c71b6fe20b952517ec0c31a71"
  license "Apache 2.0"
  version "v1.5.7"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.7-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.14.2/bytehouse-v1.5.14.2-darwin-amd64"
  sha256 "e69e189a0ba57ab36626ae7dc6737500ed1f66424c68be656e02372f5e48cc53"
  license "Apache 2.0"
  version "v1.5.14.2"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.14.2-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

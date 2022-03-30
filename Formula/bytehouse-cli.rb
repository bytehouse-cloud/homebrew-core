class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.25/bytehouse-v1.5.25-darwin-amd64"
  sha256 "7eec9c62415f5f8af0b6aedbb3bf68c5e4cfdd99146c1f89aa835cfe63ece537"
  license "Apache 2.0"
  version "v1.5.25"

  def install
    File.rename("bytehouse-v1.5.25-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

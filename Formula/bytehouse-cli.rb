class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.18.2/bytehouse-v1.5.18.2-darwin-amd64"
  sha256 "05f725f7bcfc7d10029327a88817b591740a76231c8f817458f6b06850d088d8"
  license "Apache 2.0"
  version "v1.5.18.2"

  def install
    File.rename("bytehouse-v1.5.18.2-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.5.2/bytehouse-v1.5.5.2-darwin-amd64"
  sha256 "dd2c13ff3373ee39d1a4289ffb5d5002b51a278b8054a1402fa942d76bee227f"
  license "Apache 2.0"
  version "v1.5.5.2"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.5.2-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

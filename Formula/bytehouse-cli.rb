class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.20/bytehouse-v1.5.20-darwin-amd64"
  sha256 "a00195003f81f95e7cb04a4b069c8b6216bbe01cef11b2d6516eff49983385e6"
  license "Apache 2.0"
  version "v1.5.20"

  def install
    File.rename("bytehouse-v1.5.20-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.11/bytehouse-v1.5.11-darwin-amd64"
  sha256 "0e9a7997cd194964a33f6772c79f3dc25045410b2242a960d9a496525362a19a"
  license "Apache 2.0"
  version "v1.5.11"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.11-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

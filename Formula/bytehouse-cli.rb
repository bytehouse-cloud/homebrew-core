class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.23/bytehouse-v1.5.23-darwin-amd64"
  sha256 "27648400f1d391b76e82a995e532d8e43dd95a4a6f9b419536f8b59c6be5cf7a"
  license "Apache 2.0"
  version "v1.5.23"

  def install
    File.rename("bytehouse-v1.5.23-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

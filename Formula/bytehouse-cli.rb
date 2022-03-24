class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.21.1/bytehouse-1.5.21.1-darwin-amd64"
  sha256 "7be27b7c70118e1af9e7bc0247385e8ddc7e546140b6a2a14e72690a191f086a"
  license "Apache 2.0"
  version "1.5.21.1"

  def install
    File.rename("bytehouse-1.5.21.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

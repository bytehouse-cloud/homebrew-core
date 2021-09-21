class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.14.1/bytehouse-v1.5.14.1-darwin-amd64"
  sha256 "5ae652196fab04e06257886257a8800b22c8f3bdc4422064e5a4e6b81ded7a95"
  license "Apache 2.0"
  version "v1.5.14.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.14.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

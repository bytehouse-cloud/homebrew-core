class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17/bytehouse-v1.5.17-darwin-amd64"
  sha256 "6dd57f6be99b0729851b2129756967a0374b8e00cfcdff37f1eeab9d34f10df3"
  license "Apache 2.0"
  version "v1.5.17"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

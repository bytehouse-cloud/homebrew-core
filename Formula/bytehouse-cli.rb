class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.5.1/bytehouse-v1.5.5.1-darwin-amd64"
  sha256 "4f4bb514444e2819ff3c5781bcb7ab65be7d8e1d6d292075efa898702f32bd06"
  license "Apache 2.0"
  version "v1.5.5.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.5.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

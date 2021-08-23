class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.9/bytehouse-v1.5.9-darwin-amd64"
  sha256 "989c1a5e47804b06bfb3dd22b1eeb86d79f4c69b351207d7539a394bd7d94650"
  license "Apache 2.0"
  version "v1.5.9"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.9-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.1.1/bytehouse-v1.5.17.1.1-darwin-amd64"
  sha256 "59e30af99474ae120a015d01e4a28e52fdd85f4d4e178ed35434341492a41e4f"
  license "Apache 2.0"
  version "v1.5.17.1.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17.1.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

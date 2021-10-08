class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.2/bytehouse-v1.5.17.2-darwin-amd64"
  sha256 "1dc791b7a82746010114c15a90057bc48855ffb0d3a9c62c0d0e65ac19d5e26f"
  license "Apache 2.0"
  version "v1.5.17.2"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17.2-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

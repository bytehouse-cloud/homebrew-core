class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.8/bytehouse-v1.5.17.8-darwin-amd64"
  sha256 "4661be406f2c7cf3f824ed5a83831cf4d407f83f5bfee2cc50cf363ec0e3a428"
  license "Apache 2.0"
  version "v1.5.17.8"

  def install
    File.rename("bytehouse-v1.5.17.8-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

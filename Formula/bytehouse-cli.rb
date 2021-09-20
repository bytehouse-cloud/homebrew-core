class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.14/bytehouse-v1.5.14-darwin-amd64"
  sha256 "09c125247080ddc2bde287242deacd95ef0a6435f3ec842a77b4e19a7dbdd880"
  license "Apache 2.0"
  version "v1.5.14"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.14-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

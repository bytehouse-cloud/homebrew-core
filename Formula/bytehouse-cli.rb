class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.12.1/bytehouse-v1.5.12.1-darwin-amd64"
  sha256 "1baf3324cefa33d3f0dae9c3851d20ae2fb038be3d2111bcd622916b9c7b43a6"
  license "Apache 2.0"
  version "v1.5.12.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.12.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

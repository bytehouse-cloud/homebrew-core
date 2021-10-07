class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.1/bytehouse-v1.5.17.1-darwin-amd64"
  sha256 "cab34cfd60c1d7bd374d850a37e6a113c141e36b2be43815af0d52d445b52d7e"
  license "Apache 2.0"
  version "v1.5.17.1"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

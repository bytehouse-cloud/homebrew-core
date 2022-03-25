class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.22/bytehouse-v1.5.22-darwin-amd64"
  sha256 "1d0afc450b50421369f85cb0f3bd637018adf445a6de698f2b0b0e5d5b9aeef6"
  license "Apache 2.0"
  version "v1.5.22"

  def install
    File.rename("bytehouse-v1.5.22-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

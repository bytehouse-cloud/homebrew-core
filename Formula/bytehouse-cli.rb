class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.9/bytehouse-v1.5.17.9-darwin-amd64"
  sha256 "3a345ad384d6fe0a1d370d05f0972bc01293cf4f7cef3d52fcf16a9a739162e9"
  license "Apache 2.0"
  version "v1.5.17.9"

  def install
    File.rename("bytehouse-v1.5.17.9-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

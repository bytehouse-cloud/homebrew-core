class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.6/bytehouse-v1.5.17.6-darwin-amd64"
  sha256 "dd94b27c9e0dbfce3483edd26611c4db859c7b519a0d2e6dd2f8816dbab60bfd"
  license "Apache 2.0"
  version "v1.5.17.6"

  def install
    File.rename("bytehouse-v1.5.17.6-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

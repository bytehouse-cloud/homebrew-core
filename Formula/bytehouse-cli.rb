class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.26/bytehouse-v1.5.26-darwin-amd64"
  sha256 "84d0d58ce4eb676177399bcf1e43e9053f4467aa8a937bf4b979f9caf69187b2"
  license "Apache 2.0"
  version "v1.5.26"

  def install
    File.rename("bytehouse-v1.5.26-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

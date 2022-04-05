class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/test-v0.0.1/bytehouse-test-v0.0.1-darwin-amd64"
  sha256 "84d0d58ce4eb676177399bcf1e43e9053f4467aa8a937bf4b979f9caf69187b2"
  license "Apache 2.0"
  version "test-v0.0.1"

  def install
    File.rename("bytehouse-test-v0.0.1-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"

    man1.install Dir["manual/*.1"]
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

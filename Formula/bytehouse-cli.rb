class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.19/bytehouse-v1.5.19-darwin-amd64"
  sha256 "cd2f7fa2a51a9307f8794d58c625c24120960a5b2599be56d84e8ba79cf70b88"
  license "Apache 2.0"
  version "v1.5.19"

  def install
    File.rename("bytehouse-v1.5.19-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

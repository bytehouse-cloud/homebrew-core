class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.18/bytehouse-1.5.18-darwin-amd64"
  sha256 "5b943cd024d56de7ac321e746a5d43682468f4197942542630e7010fff39fd5c"
  license "Apache 2.0"
  version "1.5.18"

  def install
    File.rename("bytehouse-1.5.18-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

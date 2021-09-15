class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.13/bytehouse-v1.5.13-darwin-amd64"
  sha256 "a6c7bff34b700e147542f8d530eeaf8c151d74582d4a374b08318c46129a14cc"
  license "Apache 2.0"
  version "v1.5.13"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.13-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.5/bytehouse-v1.5.17.5-darwin-amd64"
  sha256 "5d50a563a49cbd3e64ae23ca78ed4b4fa684cd96af5fa7a8f5e0f9b7692f256d"
  license "Apache 2.0"
  version "v1.5.17.5"

  def install
    File.rename("bytehouse-v1.5.17.5-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

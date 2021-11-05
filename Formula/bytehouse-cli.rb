class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.17.4/bytehouse-v1.5.17.4-darwin-amd64"
  sha256 "1e6eeb7f9accefeb796a6615ffabde99b9378b44acbf500be71979cbfc9424e3"
  license "Apache 2.0"
  version "v1.5.17.4"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.17.4-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

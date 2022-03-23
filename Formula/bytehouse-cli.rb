class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.21/bytehouse-v1.5.21-darwin-amd64"
  sha256 "28542cb66bf2505e6ffbe31fcdd103cd98739905260236d2e557778d715ae12d"
  license "Apache 2.0"
  version "v1.5.21"

  def install
    File.rename("bytehouse-v1.5.21-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

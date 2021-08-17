class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.8-test/bytehouse-v1.5.8-test-darwin-amd64"
  sha256 "45348fa5589bb9b69da0c3996550bdfbf29027c018fc9215ab14cbf84b4381df"
  license "Apache 2.0"
  version "v1.5.8-test"

  bottle :unneeded

  def install
    File.rename("bytehouse-v1.5.8-test-darwin-amd64", "bytehouse-cli")
    bin.install "bytehouse-cli"
  end

  def test
    system "#{bin}/bytehouse-cli", "--version"
  end
end

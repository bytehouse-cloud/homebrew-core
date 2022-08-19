# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  version "1.5.38"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.38/bytehouse-cli_1.5.38_macOS_x86_64.tar.gz"
      sha256 "9826c2caff939415449e9c1a4f853226ff9129fd3f63ecbae25f6635dfba4109"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.38/bytehouse-cli_1.5.38_macOS_arm64.tar.gz"
      sha256 "be55acebeed126625f7173f464e2e0fa11605945e467be5b0563a4310feab0d7"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.5.38/bytehouse-cli_1.5.38_Linux_x86_64.tar.gz"
      sha256 "33c05f2ac7bc772d9b93349e8540071cd5e94e6588a07f05483b5479d219eabb"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  def caveats; <<~EOS
    Bytehouse SQL Gateway Command Line Interface to interact with cnch via gateway
  EOS
  end

  test do
    system "#{bin}/bytehouse-cli", "--version"
  end
end

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  version "1.16.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.16.3/bytehouse-cli_1.16.3_macOS_arm64.tar.gz"
      sha256 "c1df83b0ddef3efde386993b5ccaf46cecd3cf178f0b8f7c33864c1f61c09c9c"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.16.3/bytehouse-cli_1.16.3_macOS_x86_64.tar.gz"
      sha256 "d8cb89cd856c96d14991f518d9f4acabcd181f3dfae090c961659f1b21d84aa6"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.16.3/bytehouse-cli_1.16.3_Linux_x86_64.tar.gz"
      sha256 "5e2795eff24b832bf4aa826a05089b925b20e69131a7ca3ba5b118610c0e321b"

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

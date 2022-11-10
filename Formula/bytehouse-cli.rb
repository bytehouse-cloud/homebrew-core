# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  version "1.5.45"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.45/bytehouse-cli_1.5.45_macOS_x86_64.tar.gz"
      sha256 "849991aec9b72118171689db57f08ec022e75a82f4998ae8ef7afc6af6cc9223"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.45/bytehouse-cli_1.5.45_macOS_arm64.tar.gz"
      sha256 "0d9fdc773fe4884a1f00eb6c711165a6cfce3b627f1895ab50de764a89fc85d6"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/1.5.45/bytehouse-cli_1.5.45_Linux_x86_64.tar.gz"
      sha256 "c016fd1aeeaceeaa2cf6885a99b7da529007d3ad93b46cd603f9f8c8c16c86c7"

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

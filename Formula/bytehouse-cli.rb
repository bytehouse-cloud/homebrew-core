# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  version "1.20.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.0/bytehouse-cli_1.20.0_macOS_arm64.tar.gz"
      sha256 "3f7d42a69895c776a04ce4ba8760251840cc1270218f0958817f86ffa1eac836"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.0/bytehouse-cli_1.20.0_macOS_x86_64.tar.gz"
      sha256 "b748cbcbd6d80024496df542b5fc291c0ad8a20658cbd191897dcf301169d6f0"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.0/bytehouse-cli_1.20.0_Linux_x86_64.tar.gz"
      sha256 "917406b60496c7397d09f4042494624c929808c97907022193874ca9eb155a44"

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

# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class BytehouseCli < Formula
  desc "ByteHouse SQL Gateway Command-Line Interface"
  homepage "https://github.com/bytehouse-cloud/cli"
  version "1.20.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.2/bytehouse-cli_1.20.2_macOS_arm64.tar.gz"
      sha256 "f4935d83dbe42e10e475bedbb5b4ef19e429d779260c0cef79c4b79b512a7cf3"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.2/bytehouse-cli_1.20.2_macOS_x86_64.tar.gz"
      sha256 "3d863d4b2266e6789e5f2aafcdee1464740fcaee68c2e6525321859fa7a457aa"

      def install
        bin.install "bytehouse-cli"
        man1.install Dir["manual/bytehouse-cli.1"]
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/bytehouse-cloud/cli/releases/download/v1.20.2/bytehouse-cli_1.20.2_Linux_x86_64.tar.gz"
      sha256 "2e9eb258627523aaa850ef1e5d015356fe16a1e2a17baaf53aed0b6dea87bc5b"

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

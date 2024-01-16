# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsciiImageConverter < Formula
  desc "Convert images into ascii art"
  homepage "https://github.com/TheZoraiz/ascii-image-converter"
  version "1.13.1-next"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheZoraiz/ascii-image-converter/releases/download/v1.13.1/ascii-image-converter_macOS_arm64_64bit.tar.gz"
      sha256 "e9c63fa4f3f7ce927c7188be03d94fc70590488df1213f880b17d29e9fb3b8c0"

      def install
        bin.install "ascii-image-converter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheZoraiz/ascii-image-converter/releases/download/v1.13.1/ascii-image-converter_macOS_amd64_64bit.tar.gz"
      sha256 "3ca820c138d55372a491921a4dfe01a02058d391b32cfc31708052e409b9a810"

      def install
        bin.install "ascii-image-converter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/TheZoraiz/ascii-image-converter/releases/download/v1.13.1/ascii-image-converter_Linux_arm64_64bit.tar.gz"
      sha256 "7b50c9ff641fb8f10e330aa7c4ce047feb6ac0ba3ceaa7df5674e1974439fd71"

      def install
        bin.install "ascii-image-converter"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/TheZoraiz/ascii-image-converter/releases/download/v1.13.1/ascii-image-converter_Linux_amd64_64bit.tar.gz"
      sha256 "5652d8b7ba9efa71837c473d32d223a8a77264bc6e003ae311719a8644df3c56"

      def install
        bin.install "ascii-image-converter"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/TheZoraiz/ascii-image-converter/releases/download/v1.13.1/ascii-image-converter_Linux_armv6_32bit.tar.gz"
      sha256 "b374ef0c2a22a402fc79036c6ae842742b69adddd7f031f5321ae224b0aa9d56"

      def install
        bin.install "ascii-image-converter"
      end
    end
  end

  test do
    system "#{bin}/ascii-image-converter --version"
  end
end
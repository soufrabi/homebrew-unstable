class DeadBeef < Formula
  desc "Music Player"
  homepage "https://github.com/DeaDBeeF-Player/deadbeef"
  url "https://sourceforge.net/projects/deadbeef/files/travis/linux/1.9.6/deadbeef-static_1.9.6-1_x86_64.tar.bz2/download"
  version "1.9.6"
  sha256 "aa17741053f63a7fceace003bf269bd4c4c9e55e42ee14286d9fbf34fbc8e014"
  license "GPL-2.0"

  def install
    prefix.install Dir["*"]
    mkdir_p bin
    bin.install_symlink "#{prefix}/deadbeef"
  end

  test do
    assert_match "DeaDBeeF", shell_output("#{bin}/deadbeef --version 2>/dev/null")
  end
end

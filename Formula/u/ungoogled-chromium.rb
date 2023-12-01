class UngoogledChromium < Formula
  desc "ungoogled version of chromium"
  homepage "https://github.com/ungoogled-software/ungoogled-chromium"
  url "https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/119.0.6045.123-1/ungoogled-chromium_119.0.6045.123-1.1_linux.tar.xz"
  sha256 "ed18d44322aab81dbe5ed568ccfea429b8972fa1bbfcb10bb65fbee5b107ccc2"
  license "BSD-2-Clause"
  version "119.0.0"

  # depends_on "cmake" => :build

  def install
    prefix.install Dir["*"]
    mkdir_p bin
    bin.install_symlink "#{prefix}/chrome"
    bin.install_symlink "#{prefix}/chromedriver"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test ungoogled-chromium`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
        assert_match "Chromium", shell_output("#{bin}/chrome --version 2>/dev/null")

    # system "false"
  end
end

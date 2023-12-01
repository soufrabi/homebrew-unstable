# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class UngoogledChromium < Formula
  desc "ungoogled version of chromium"
  homepage "https://github.com/ungoogled-software/ungoogled-chromium"
  url "https://github.com/ungoogled-software/ungoogled-chromium-portablelinux/releases/download/119.0.6045.123-1/ungoogled-chromium_119.0.6045.123-1.1_linux.tar.xz"
  sha256 "ed18d44322aab81dbe5ed568ccfea429b8972fa1bbfcb10bb65fbee5b107ccc2"
  license "BSD-2-Clause"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    bin.install "chrome"
    bin.install "chromedriver"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
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
    system "false"
  end
end

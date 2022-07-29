# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DigarchScripts < Formula
  desc "Moves files from kryofluxoutput directory to Disk Images directory. Moves tars to kryofluxstreamarchive directory."
  homepage "https://github.com/arhonemus/digarch_scripts"
  url "https://github.com/arhonemus/digarch_scripts/archive/refs/tags/v0.0.1.tar.gz"
  sha256 "ff6aeade51c8343ff2fb9396b61fd06af23d9224434fe0257fcd867485b7e2e0"
  license "MIT"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install "kyroflux"    
    bin.install Dir["lib"]    
    bin.install Dir["files"]
    prefix.install "README.md"
    prefix.install "LICENSE"
    system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test digarch_scripts`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end

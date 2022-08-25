# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class DigarchScripts < Formula
  desc "Moves files from kryofluxoutput directory to Disk Images directory. Moves tars to kryofluxstreamarchive directory."
  homepage "https://github.com/arhonemus/digarch_scripts"
  url "https://github.com/arhonemus/digarch_scripts/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "cebadb524e649d3d353bd7ea04a3214de13b8745a916ec1277330308a8c3a383"
  license "MIT"
  head "https://github.com/arhonemus/digarch_scripts.git"

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    bin.install "Mac/CMSFTmetadata"
    bin.install "Mac/CMSmetadata"
    bin.install "Mac/SIPdir"
    bin.install "Mac/collphoto"
    bin.install "Mac/droidFT"
    bin.install "Mac/droidprompt"
    bin.install "Mac/dtemplate"
    bin.install "Mac/facphoto"
    bin.install "Mac/ft"
    bin.install "Mac/ftsf"
    bin.install "Mac/kryofluxmove"
    bin.install "Mac/mediaidsha"
    bin.install "Mac/metadata"
    bin.install "Mac/movephotograph"
    bin.install "Mac/photosip"
    bin.install "Mac/qcfac"
    bin.install "Mac/qctools"
    bin.install "Mac/sfft"
    # bin.install Dir["lib"]    
    # bin.install Dir["files"]
    prefix.install "README.md"
    #prefix.install "LICENSE"
    # system "./configure", *std_configure_args, "--disable-silent-rules"
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
  end

  #test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test digarch_scripts`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    #system "false"
  #end
end

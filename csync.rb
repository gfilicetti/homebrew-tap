class Csync < Formula
  desc "Provides rsync like capabilities over sftp and smb"
  homepage "https://open.cryptomilk.org/projects/csync"
  url "https://github.com/gfilicetti/csync/archive/0.50.0.tar.gz"
  sha256 "d96bb04070006e671069016f58ffd47f0da0bb2b6e04fb3426e437f6a0e67995"

  depends_on "cmake" => :build
  depends_on "check" => :build
  depends_on "libssh" => :build
  depends_on "sqlite" => :build

  def install
    cd "build" do
      system "cmake", "..", *std_cmake_args
      system "make", "install"
    end
  end

  test do
  end
end

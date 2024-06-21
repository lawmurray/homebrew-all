class Membirch < Formula
  desc "C++ library of smart pointer types for object-level copy-on-write"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/membirch-2.1.5.tar.gz"
  version "2.1.5"
  sha256 "77741eb2590fbde87e6a463db28a1d4d30c5e2f3eb17242407628712bf6fc8b2"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libomp"

  def install
    # see internal docs of birch driver program for explanation of OpenMP args
    system "./configure", "--disable-assert",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    system "true"
  end
end

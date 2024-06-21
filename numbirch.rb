class Numbirch < Formula
  desc "C++ library providing numerical kernels and copy-on-write arrays"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/numbirch-2.1.5.tar.gz"
  version "2.1.5"
  sha256 "c1d9df1b469f6146b5568790ef36f81e11427b6d3f5f89db9d7159ce27ac0228"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "libomp"
  depends_on "eigen"

  def install
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

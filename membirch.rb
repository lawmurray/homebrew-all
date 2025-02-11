class Membirch < Formula
  desc "C++ library of smart pointer types for object-level copy-on-write"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/membirch-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "80caf2bde80f25ee294c46bcbd3b5bb59a0f4acf91adfde6566910c09415e03c"
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

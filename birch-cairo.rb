class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-cairo-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "855850d1b6fb4422e40614e02103e68c42a7b788cdefbe24ebfae3da73961941"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cairo"
  depends_on "birch-standard" => "2.1.7"

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

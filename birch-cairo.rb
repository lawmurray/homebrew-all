class BirchCairo < Formula
  desc "Cairo wrapper library for the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-cairo-2.1.5.tar.gz"
  version "2.1.5"
  sha256 "a06c3c67db5c0b8dd3b7faf2ed6cbee3f7868240ae9a34ed35ec1df5badd79a9"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "cairo"
  depends_on "birch-standard" => "2.1.5"

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

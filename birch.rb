class Birch < Formula
  desc "Birch is a programming language for expressing probabilistic models and performing Bayesian inference. It is used by statisticians, data scientists, and machine learning engineers. Its features include automatic differentiation, automatic marginalization, and automatic conditioning. These compose into advanced Monte Carlo inference algorithms. The Birch language transpiles to C++, with multithreaded parallelism and fast copy-on-write memory management."
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "aca8edbde06da2eaafd093ae7104d80aa93b0add570d0aa90066d3ca9bde12c8"
  license "Apache-2.0"
  depends_on "bison" => :build
  depends_on "flex" => :build
  depends_on "autoconf" => [:build, :recommended]
  depends_on "automake" => [:build, :recommended]
  depends_on "libtool" => [:build, :recommended]
  depends_on "binutils"
  depends_on "jemalloc"
  depends_on "libyaml"
  depends_on "birch-standard" => :recommended

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

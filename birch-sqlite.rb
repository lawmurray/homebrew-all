class BirchSqlite < Formula
  desc "SQLite wrapper library for the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-sqlite-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "bb2316e5ed169c41423f39aa2b197bb981f970a438bc3dbaea48bc18784046c6"
  license "Apache-2.0"
  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "sqlite"
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

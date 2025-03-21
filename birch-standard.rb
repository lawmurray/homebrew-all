class BirchStandard < Formula
  desc "Standard library of the Birch probabilistic programming language"
  homepage "https://birch-lang.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-standard-2.1.7.tar.gz"
  version "2.1.7"
  sha256 "c341afc331430f10348e7a86ce99dbe7094468a4c18f01db3ead69b552000636"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libyaml"
  depends_on "membirch" => "2.1.7"
  depends_on "numbirch" => "2.1.7"

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

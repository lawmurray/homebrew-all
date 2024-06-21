class BirchStandard < Formula
  desc "Standard library of the Birch probabilistic programming language"
  homepage "https://birch.sh"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/birch-standard-2.1.5.tar.gz"
  version "2.1.5"
  sha256 "aec0bfce4c9bd295baeb8568ca4c65987968d5cc4f7ef61ca9113971cb9f49aa"
  license "Apache-2.0"
  depends_on "boost"
  depends_on "libyaml"
  depends_on "membirch" => "2.1.5"
  depends_on "numbirch" => "2.1.5"

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

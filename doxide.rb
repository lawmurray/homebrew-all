class Doxide < Formula
  desc "Modern documentation for modern C++. Configure with YAML, output Markdown."
  homepage "https://doxide.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/doxide-0.9.0.tar.gz"
  version "0.9.0"
  sha256 "8157b62bf94039a85cccc886c4ad9b2d96db0b74a439b32a1f678a5ff157aae9"
  license "Apache-2.0"
  depends_on "cmake" => :build
  depends_on "cli11" => :build
  depends_on "libyaml"

  def install
    system "cmake", "-DCMAKE_BUILD_TYPE=Release", "."
    system "cmake", "--build", ".", "--config", "Release", "--verbose"
    system "cmake", "--install", ".", "--config", "Release", "--prefix", "#{prefix}", "--verbose"
  end

  test do
    system "true"
  end
end

class Doxide < Formula
  desc "Modern documentation for modern C++. Configure with YAML, output Markdown."
  homepage "https://doxide.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/doxide-0.9.0.tar.gz"
  version "0.9.0"
  sha256 "4fa30b0a22abc6deea3b940400c02c030dd7cc2fb978225b3e074151343192fe"
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

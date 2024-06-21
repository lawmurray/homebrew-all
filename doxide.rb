class Doxide < Formula
  desc "Modern documentation for modern C++. Configure with YAML, output Markdown."
  homepage "https://doxide.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/doxide-0.4.6.tar.gz"
  version "0.4.6"
  sha256 "24905967b0797770489d9759c4f4062e969b419b42b4c7234e5475d6c3bf030d"
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

class Doxide < Formula
  desc "Modern documentation for modern C++. Configure with YAML, output Markdown."
  homepage "https://doxide.org"
  url "https://raw.githubusercontent.com/lawmurray/homebrew-all/master/doxide-0.8.0.tar.gz"
  version "0.8.0"
  sha256 "9d6836478cb39022177a7d35d7370e6f308e460dbd26efe1596f2e42fc1740ea"
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

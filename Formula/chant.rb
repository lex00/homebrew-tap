class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "e0c2454d8f1acddfa379763c4997f8ce3c34535175f48c6215194444c57c4d10"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "5196968c15cfb447652444065d81e0b78eeb12f726aca86e1d3bdad80201cc6e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
      sha256 "0b5364871cd356f0490cade3f579b4fd93e4cfc39fa8a6a0c3e69e4f4fb00324"
    end
  end

  def install
    if OS.mac? && Hardware::CPU.arm?
      bin.install "chant-macos-aarch64" => "chant"
    elsif OS.mac?
      bin.install "chant-macos-x86_64" => "chant"
    else
      bin.install "chant-linux-x86_64" => "chant"
    end
  end

  test do
    system bin/"chant", "help"
  end
end

class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "f9ee41d05cc8573057ca67b759b79d4bb6244824ac81d6045ce436d7648ee462"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "cc2ebd3ff89cc1d951bc99b6713a2358108ae127d2e30a76b521701d1b0aef7c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
      sha256 "0e645e9c0ee0adeba588eb6bbbd9e42ee4301d62434ca4d9730c45ace91a4813"
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

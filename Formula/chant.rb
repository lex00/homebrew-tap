class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "652e29ea60207c3106a1de7beba1165d52981b51252e17c822360282a03144b4"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "e21994cc7d92e39cdef748e2738b51923f63085c0f9feae02d1b436070f1c29d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
      sha256 "4fb89f23264a7aaa539c695489e32edca5387cc1d001a8ff8eef0ac099e8e8c6"
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

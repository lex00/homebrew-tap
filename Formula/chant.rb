class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "f793358a21dc4339bc4f716df65f65474973510fe55146ab89b34bc3146655e8"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "1424496b5f456a9d495d4e828bea3f1ec6b153cd562e87462f655686a5b2d05a"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "77a052e28b63ffc142a74030a50f032ab987ca158895bd785c6b4b827e115b21"
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
    system "#{bin}/chant", "help"
  end
end

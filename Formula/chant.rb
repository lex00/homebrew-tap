class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "bb375b28349492a05184326d424108716525da2874b1cc86018ec614023ea96b"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "bba465ce45336ab0faf8b9920b14b69d4a408e312a931eba53c06610fecd2721"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
      sha256 "bf0337c60cd56f21df4dd1cc6bd94b5b40dba262f7ff65b68a4f756c6d9b2c3b"
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

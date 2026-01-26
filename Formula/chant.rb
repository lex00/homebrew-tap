class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "8bb1dc2f9438fe689bf64284a79f5a23e42ffb856eecf98ec767458d9cd609a5"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "65cbbe4cb034c7f8a1f9db3cb7cbc0dc5c36e746879f739a25caec0f72d87ac9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
      sha256 "fde0bb021a0ccb877a11227512af95c10d1c4a446dcfef0998799e8210bcb67a"
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

class Chant < Formula
  desc "Intent Driven Development - specification-driven development tool"
  homepage "https://github.com/lex00/chant"
  version "0.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "5c8f9ea59e963ff0e3062aa4aac35aaf3ff7ec2a7b186f891b2c4b771f97843a"
    else
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "deb1d6e5ecf00f1af252591426c7e435042ab524180da744b6e46497e947e507"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "1122d8c8fd0bc8293473065b9e2cf2d837313e73113c0251cf34ec6d80601f70"
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

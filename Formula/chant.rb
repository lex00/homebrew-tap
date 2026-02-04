class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.15.5"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "331cf54c88cd09c0a00caea8f9dff6fa2cc357b485e1d0aaf325b8fedd30d848"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "cb38205721b5c7a1f2a744e58a5376b785c6ad00be7c59556e68cf38c5ecdd07"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "e0dba0fb655fa95cc1b8c4bbf04e8593b6196cabe7d2c1840dddf5b9ee3688b1"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
    if OS.mac?
      system "codesign", "-f", "-s", "-", "#{bin}/chant"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

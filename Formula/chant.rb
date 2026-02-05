class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.15.20"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "43b8656fa001c719c23a54b4752ec271f3152f8a96bff8bdd7d1eefed0c4d0dd"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "77357db999b4bdb27b54b6671d383ac29b4ecac71db53f943e6b94702ec20159"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "b8a1246e592282a5005de5dc73ae0dbb426acc5449b85fc009ad76b22bb2ec49"
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

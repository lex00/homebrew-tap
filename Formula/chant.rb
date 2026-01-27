class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.3.4"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "9c47e78bd1d473dd5322299f60fbc4cb737914908077d804085b7dbd2d054fb8"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "db4db8dc328a0bfcbd561f8cbd46a8a818fb129aa1c7b55c52ebcbaeb027a019"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "70d8d61d34acf05ffaa3d7ef2b9e28212bee594894dc992c631067efc09e7ae3"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

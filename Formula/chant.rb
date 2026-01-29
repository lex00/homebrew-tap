class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.6.1"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "e7fb42c6ebedbf3e3fd8f04afca1d2ca4dbc0156b5922afb345881b8bb7625e0"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "1ed02cea7b14c21b21b25da9537235c72a82d534be5102916378e1c40267325d"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "b437399fbd24ec205a6f8752a4f0d95555f215823a1c2ed6cd5f9c80e112d2a4"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

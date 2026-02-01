class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.12.1"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "0179da3692cdc586bdc274aba1a515f0a6e8df28ba04d889e511c75b2ca6729e"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "881ee00a5eea0a7fb030d0ab0c7b548ebe8b6e49e8aba6cd60f3eeb4610eea93"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "4e27a078c63bbaed0cf40a6c31f8f5e4188142ca64e21757aa21b3cda6147080"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

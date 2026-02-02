class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.13.11"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "8e9d64cd32c9c52efedce65a4edf1895c0e18a354dc7ee9ff0927dd025b018bf"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "4a24f274f9082ee711db2230ca45de37ead7a42bdf2b9fa25f0f97225acb80bf"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "dbdf1ca450697bd4ca8985783f2c08b3e96d550e70cc2c26ad957db6e1bd9a55"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

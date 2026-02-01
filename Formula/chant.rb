class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.13.3"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "551f27a8261032454e39fcce2f17cf0e593fa84209f0e221309fbd7b5141ec62"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "b30d7133c4782cbb757e3449dc567eea19913d25fd9a7c8ff1f10240d78f3a47"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "eefd07d5093feecbbb64eb9b792a0c5bb6706ec5e3b10a0f14d0ae8dde05f7a5"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

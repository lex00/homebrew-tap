class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.3.7"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "2325d5f92e910f72c9354c849f748694b9f9dfcc34b5bc5aafbd43f0ff75548a"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "b2ff323482da002187c3c99961d3c74cb5710a3409980b3cb28f625c1b12cd3d"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "64ac39425bb321d2e01c21ef6d4bc4d42281e1e7a413df9cf9794ce0057505b5"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

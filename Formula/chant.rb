class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "44fc5b2f4274986eaba1cfed6dd89a2ee9bcb09ed1a939993fab1305f5c9b38f"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "af18c74a181f391bd7512d1b7718bee7fc604a1830e7a5978ef0b1b66bcea212"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "b3644ae1bc0b3c79913f3849357283cf53a196332ad81307919b46b978026de1"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

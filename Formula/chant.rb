class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.11.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "c6f4186f45fc24b8f73d6b15fa2265b64c8b8d6ea4ae65c7ab263b18c905f771"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "90a1c497a5d88154499bbdd68515fe01b35aa74e9151ca58089c763199b69117"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "ebe4bfc851849882b6a8d9631073a7ba884af04f35611aaf357ca8c6e52f47cd"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

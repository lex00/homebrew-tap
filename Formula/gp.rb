class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.4/gp-aarch64-apple-darwin.tar.gz"
      sha256 "5a8a179595a09615c699f3b1bb85f7122e5c1d1f320fa6e584d29498bb4501ca"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.4/gp-x86_64-apple-darwin.tar.gz"
      sha256 "c27f9bdb291137753e0e872d3dfb88fac36a37db5fb08567161287091ef2c1c3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.4/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52d6c2c6ec1e2439bd7e46e7af1d3262dd6c437330575cabd53f2059e3bf8a61"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.4/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "418ae728820c68d27480ec926668ddd315bfc652c4b2e34e0a776563dee41bad"
    end
  end

  def install
    bin.install "gp"
    doc.install "README.txt", "THIRD-PARTY.md"
  end

  test do
    assert_match "gp #{version}", shell_output("#{bin}/gp --version")
  end
end

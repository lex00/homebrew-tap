class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.2/gp-aarch64-apple-darwin.tar.gz"
      sha256 "e7acd5cdb8e5c0ae95c2224838dd8a1e759491d92ed375e8ef48a9a76031ddda"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.2/gp-x86_64-apple-darwin.tar.gz"
      sha256 "d58acc90c8c2e85b5edf1d4fc3e94f2ffc9f9821a3e74af2ffa16b7f3d2c24d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.2/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c733e50f92f7844b733742bc2c4a77c20e920b18d6a44b22e473ea6596a2f551"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.2/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40ee79b35da5c5838af6ca65d6f2a6f04a1da8a57ec95ce50b1d26abdd4b6676"
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

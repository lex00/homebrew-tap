class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.9/gp-aarch64-apple-darwin.tar.gz"
      sha256 "434aaeb910dba1ce588e8c97e133b2e0ccdabe9127d4772d65aa4c12de682866"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.9/gp-x86_64-apple-darwin.tar.gz"
      sha256 "ec000c233782555f57ceea32b3a92673d4c6a492b4bcc90affd0df3c42c88500"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.9/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e33f2dfe418298a3d41fde2cc1039b998351e8209bfb901d38ffe9717a8a8e7"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.9/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c5d6604a650dc965e69ded62307e582a30ad9b9fa5a81c42de4d2eeeb60ac85d"
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

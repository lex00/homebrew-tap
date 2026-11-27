class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.8/gp-aarch64-apple-darwin.tar.gz"
      sha256 "cd05340b905614ea01d4f31bf0ff0508e20c7497d912cfa134e18cc38e020699"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.8/gp-x86_64-apple-darwin.tar.gz"
      sha256 "bd7eecd41e1c61086a72ec1427812f1669a6bbb02a3734b47a5c0225c45ee48a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.8/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e2abd3203a72f950d7e0123c16211dc072f084966dd852e99c1e8d0cc0bebd0"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.8/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3c67a2ca78682a8b851a51c6d4cc4c07ae2b7a3d5a689155f8303ae394ff887f"
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

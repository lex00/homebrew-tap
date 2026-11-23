class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.5/gp-aarch64-apple-darwin.tar.gz"
      sha256 "12a20080727e6d77534cdf5a5c2261751b5b22aba3d58c21b633ce7086699172"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.5/gp-x86_64-apple-darwin.tar.gz"
      sha256 "2cb5d5fbcf88ede9f7d87358805c51327c3aa9acf8ef219d43e9327f4d6b1159"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.5/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0a3be18b811fee0bb5dd7dedd1a6eed674bee11436242f680cf4369fe95395f0"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.5/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "90ac1e3e2fb0e89ae1613db75b1bf5bd5bee7d9a749ab99077908a94c67db182"
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

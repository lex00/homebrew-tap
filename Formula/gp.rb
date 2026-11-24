class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.7/gp-aarch64-apple-darwin.tar.gz"
      sha256 "35e3e86896fef3410712d61a0ac99ebf80417f80130eb0cecb5c2e7578bffdc6"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.7/gp-x86_64-apple-darwin.tar.gz"
      sha256 "5af9c084c6a3b808582c98816c065c6be42dd22c032fd828c3e3c554a7c8eed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.7/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21a869039003e5346cd59cd3eda698a8325b96a03624ed7b38081a86ee8d66bb"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.7/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baee06bc56ed35d863b38e6578e5bd2c00563a0d82f3aa991dc0e7135fa22684"
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

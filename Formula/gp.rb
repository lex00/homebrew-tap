class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.6/gp-aarch64-apple-darwin.tar.gz"
      sha256 "1c4a87940e0ea0d8ba1b95ee67c3df7716378343073e4d6d022e2f5af33c3eb3"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.6/gp-x86_64-apple-darwin.tar.gz"
      sha256 "5ba3f852f1986ce6bceb53c81b63cb6a141101e9defe289aec75ef2825ec2142"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.6/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "adb1ff785dc9de86a0e830f724fc80a7b0d298e6bbf0bed089297cb16ef2d66e"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.6/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d50a21c40355c1412fd7a67e04ea99137586dafd0582f09192ff28dad82bdcc1"
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

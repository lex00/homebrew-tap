class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.3/gp-aarch64-apple-darwin.tar.gz"
      sha256 "94defb7f3a5cfd8617129628d10d57f274386e8f61fc77fb13710b7763614e40"
    end
    # No Intel Mac build for now: build gp from source there.
    depends_on arch: :arm64
  end

  on_linux do
    on_arm do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.3/gp-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6f30dd79242c39f5b36a7a7c4973dcede0754fee394e039b56dbf61048bc64d3"
    end
    on_intel do
      url "https://github.com/lex00/gameprinter/releases/download/v0.1.3/gp-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "404cffce52d20f318ba080a907b4d2a9cf5f80174c98da6a6a190a41f09480e1"
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

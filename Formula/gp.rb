class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  url "https://github.com/lex00/gameprinter/releases/download/v0.1.1/gp-0.1.1-84bdd1f425bc-aarch64-apple-darwin.tar.gz"
  sha256 "4529e71ed3517c5c7362da4263cd1064c4b7d2668bc1883762acdc6750709894"
  license "Apache-2.0"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "gp"
    doc.install "README.txt", "THIRD-PARTY.md"
  end

  test do
    assert_match "gp #{version}", shell_output("#{bin}/gp --version")
  end
end

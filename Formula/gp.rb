class Gp < Formula
  desc "Game Printer tool: port old games, make themes and new games, play in a browser"
  homepage "https://lex00.github.io/gameprinter/"
  url "https://github.com/lex00/gameprinter/releases/download/v0.1.0/gp-0.1.0-f699af1d38ed-aarch64-apple-darwin.tar.gz"
  version "0.1.0"
  sha256 "f199d29ded75447d4b660c53738b15989a3d79aef16bf1a2406a9a4544f34ffd"
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

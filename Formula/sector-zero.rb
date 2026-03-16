class SectorZero < Formula
  desc "A gamified algorithm puzzle game in your terminal"
  homepage "https://lex00.github.io/sector-zero/"
  version "0.0.2"

  on_macos do
    on_arm do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.2/sector-zero_v0.0.2_darwin_arm64.tar.gz"
      sha256 "d189bd47f0b88217119879e3fe25e1efe8ebe8352d3a2f1be93de25b4b738470"
    end
    on_intel do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.2/sector-zero_v0.0.2_darwin_amd64.tar.gz"
      sha256 "de7a4e633e2b639e01fd4b0a55145dd3a355fc2f425f15ec699b3bd7ebc05395"
    end
  end

  def install
    bin.install "sector-zero"
  end

  test do
    assert_predicate bin/"sector-zero", :exist?
  end
end

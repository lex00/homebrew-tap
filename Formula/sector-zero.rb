class SectorZero < Formula
  desc "A gamified algorithm puzzle game in your terminal"
  homepage "https://lex00.github.io/sector-zero/"
  version "0.0.3"

  on_macos do
    on_arm do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.3/sector-zero_v0.0.3_darwin_arm64.tar.gz"
      sha256 "04fa5171ced94e54f2137ff4c8933a10129a2f1ac0ddbf2189dc5e021c9e4243"
    end
    on_intel do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.3/sector-zero_v0.0.3_darwin_amd64.tar.gz"
      sha256 "ea928692d5c9753d9167c88da660e2d030642179cb6630565760945a82990246"
    end
  end

  def install
    bin.install "sector-zero"
  end

  test do
    assert_predicate bin/"sector-zero", :exist?
  end
end

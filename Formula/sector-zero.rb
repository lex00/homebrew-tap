class SectorZero < Formula
  desc "A gamified algorithm puzzle game in your terminal"
  homepage "https://lex00.github.io/sector-zero/"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/lex00/sector-zero/releases/download/v#{version}/sector-zero_v#{version}_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/lex00/sector-zero/releases/download/v#{version}/sector-zero_v#{version}_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "sector-zero"
  end

  test do
    assert_predicate bin/"sector-zero", :exist?
  end
end

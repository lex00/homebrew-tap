class SectorZero < Formula
  desc "A gamified algorithm puzzle game in your terminal"
  homepage "https://lex00.github.io/sector-zero/"
  version "0.0.1"

  on_macos do
    on_arm do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.1/sector-zero_v0.0.1_darwin_arm64.tar.gz"
      sha256 "baaf61af90c78084eb8834cc82d021b41c359a484d0d4cc0084c25282bde1771"
    end
    on_intel do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.1/sector-zero_v0.0.1_darwin_amd64.tar.gz"
      sha256 "4f7194e5d29da6bddb1f49544039b876c1910bedf71f1e64c8f0792479e5eaa0"
    end
  end

  def install
    bin.install "sector-zero"
  end

  test do
    assert_predicate bin/"sector-zero", :exist?
  end
end

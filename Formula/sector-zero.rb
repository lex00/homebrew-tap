class SectorZero < Formula
  desc "A gamified algorithm puzzle game in your terminal"
  homepage "https://lex00.github.io/sector-zero/"
  version "0.0.4"

  on_macos do
    on_arm do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.4/sector-zero_v0.0.4_darwin_arm64.tar.gz"
      sha256 "1fae1529dc72b06d5df45648c58e72624e8a17b351dea5147af27297e23d8858"
    end
    on_intel do
      url "https://github.com/lex00/sector-zero/releases/download/v0.0.4/sector-zero_v0.0.4_darwin_amd64.tar.gz"
      sha256 "95daf2627151308acf5d63935b94d812c6f015c9f8f460fea13bbf2877dd08fa"
    end
  end

  def install
    bin.install "sector-zero"
  end

  test do
    assert_predicate bin/"sector-zero", :exist?
  end
end

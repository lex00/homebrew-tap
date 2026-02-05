class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.15.15"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "2dc0e6fe496bca70a38b9541df82f4a8d11b9a761e92cabcf5f1993411a85fe1"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "519cd3cf56b0003335306b41674d0da2df955867ded47070498109122efc59c7"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "2af79b0623a185791cf554c4d715c6480bb6c27f62a2374ed8da32b8f4bdb0c5"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
    if OS.mac?
      system "codesign", "-f", "-s", "-", "#{bin}/chant"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

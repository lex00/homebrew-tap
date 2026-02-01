class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.13.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "c690c7cfdf7fab8d1d6c571b064cd1a801ebab86a098d293771463005f78f182"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "fec5c7eabe796ed6db42fb7f06ac0ab133ac6c30ff5917f2b927d73f18f20ba9"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "18ff9fd39876f1d7aba572f0004c1c5a093d8bb3f215300fc0ad6fa5cd785adc"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

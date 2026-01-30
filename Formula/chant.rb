class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.7.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "f4b1f0a25ac1b2369ac684616429b23dd3ff3cd12ed3962e131aab326bfb36a6"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "58bcb350255586c3c4c4e37b5c7dddb69935ec2088ea33f3d6d13b3df3087962"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "4414c8d80eaaafbe0cebee28fb7a9ce9777586de62e1d72ed2d124adcc1ffa22"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

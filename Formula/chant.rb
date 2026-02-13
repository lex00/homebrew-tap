class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.22.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "d436e262ebdeda10e95871d05d30404c4c0352a7e5be7057366a8a6d69b119cb"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "24e813981334abed9b1e8b9af00ae255b9b12647b9f6cc9cbd0a77693e016f6b"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "262a18fc9de1767c6e73fe39ca7c10564e647320f8402a04bb1b683374baf6de"
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

class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.15.12"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "9efd647e6ddaf4cb481aaa4c4ccb4735e86addfe9ca113b62e0e93d7c45c76a6"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "2ffb5944e6b0fd0556972036b47e1605b820344d07835be1a12f811fc4f6516b"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "b1623d025389203033fdc5cf9d33b52bd20260fcc8cf4de7d51ab1fd6d39bf4e"
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

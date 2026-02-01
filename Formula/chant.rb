class Chant < Formula
  desc "Intent Driven Development tool with specification-driven execution"
  homepage "https://github.com/lex00/chant"
  version "0.12.0"

  on_macos do
    on_arm do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-aarch64"
      sha256 "1fbed4dd94cbc29c2026c72524ebeab341d6bba317dea8f9d41a34775a928d9d"
    end
    on_intel do
      url "https://github.com/lex00/chant/releases/download/v#{version}/chant-macos-x86_64"
      sha256 "83d0f187d48cc86a52b86107cfafc18eec2742b1dc43b35a5e2d4e8e208dc5c6"
    end
  end

  on_linux do
    url "https://github.com/lex00/chant/releases/download/v#{version}/chant-linux-x86_64"
    sha256 "5c3fbb2e8c980495d3d90da0ab104c4f1bd4d685b9b96381917cef9dcf9edf86"
  end

  def install
    bin.install Dir["chant-*"].first => "chant"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/chant --version")
  end
end

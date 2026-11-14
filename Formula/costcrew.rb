class Costcrew < Formula
  desc "The AI coding price database, plus what you spend on it"
  homepage "https://github.com/Arch087146/costcrew"
  version "0.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.5/costcrew-macos-aarch64.tar.gz"
      sha256 "AF3A2234E941B3F619C64E81999BA5E04FCD724C9DE44C176A5DD57D3C839A7D"
    else
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.5/costcrew-macos-x86_64.tar.gz"
      sha256 "E0E2F574603413A110599653687C5965D9C6AB63FCC5B38121435B8C908C5B88"
    end
  end

  on_linux do
    url "https://github.com/Arch087146/costcrew/releases/download/v0.4.5/costcrew-linux-x86_64.tar.gz"
    sha256 "DEBFD48F6D7ED78BA71910061D72210E307CB5F7B5FA819680CB2ABFEAFD693D"
  end

  def install
    bin.install "costcrew"
  end

  def caveats
    <<~EOS
      Run `costcrew` to open the interactive app.
      The bundled price database works fully offline.
    EOS
  end

  test do
    assert_match "costcrew", shell_output("#{bin}/costcrew --version")
  end
end

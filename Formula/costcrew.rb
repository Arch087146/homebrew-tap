class Costcrew < Formula
  desc "The AI coding price database, plus what you spend on it"
  homepage "https://github.com/Arch087146/costcrew"
  version "0.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.3/costcrew-macos-aarch64.tar.gz"
      sha256 "B83E56C536317713C0F656004E6BF91D226D821D055561AC57B4B174F3B193A0"
    else
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.3/costcrew-macos-x86_64.tar.gz"
      sha256 "34EBCFB3CFA30E0915B5329AF621A02D00C3DEE24E543BCFF2D14412F1A0AC35"
    end
  end

  on_linux do
    url "https://github.com/Arch087146/costcrew/releases/download/v0.4.3/costcrew-linux-x86_64.tar.gz"
    sha256 "BBF296D3E423446FC2774E97CFD35252258FFBCEE082EF6BCA83F58B39B97CCC"
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

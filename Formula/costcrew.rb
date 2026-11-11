class Costcrew < Formula
  desc "The AI coding price database, plus what you spend on it"
  homepage "https://github.com/Arch087146/costcrew"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.0/costcrew-macos-aarch64.tar.gz"
      sha256 "BDF9F8BD4D2E277E156D4D386F461A0C3C38F3FB0945B97E5FCF56C1B1AAC8FD"
    else
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.0/costcrew-macos-x86_64.tar.gz"
      sha256 "1ACA4A929EDD2AF9CAF7C1BFDC5548C1330DC9C14EE671773AECF1E9D1D2DDFB"
    end
  end

  on_linux do
    url "https://github.com/Arch087146/costcrew/releases/download/v0.4.0/costcrew-linux-x86_64.tar.gz"
    sha256 "5349862F1D20FAEABEA699F1CDEEB54BD4816C021E40D2CF2A41EA7FC2F3345B"
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

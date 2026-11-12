class Costcrew < Formula
  desc "The AI coding price database, plus what you spend on it"
  homepage "https://github.com/Arch087146/costcrew"
  version "0.4.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.2/costcrew-macos-aarch64.tar.gz"
      sha256 "34CE45489BB9E86ED495FE27A939AEE6C2E9C18DCEBF0C6B16146C85EE0B7324"
    else
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.2/costcrew-macos-x86_64.tar.gz"
      sha256 "25D11020ED8CC9F63BC3405B69E0744DD4994D42B32904BE1720C5FACF8BE489"
    end
  end

  on_linux do
    url "https://github.com/Arch087146/costcrew/releases/download/v0.4.2/costcrew-linux-x86_64.tar.gz"
    sha256 "D9451F3440B4DB93D3D623A8E0496245D96A4E9798E374013B91D6621FEA6B23"
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

class Costcrew < Formula
  desc "The AI coding price database, plus what you spend on it"
  homepage "https://github.com/Arch087146/costcrew"
  version "0.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.4/costcrew-macos-aarch64.tar.gz"
      sha256 "0291FE2362E2DB8D6D06BD0EAE7BAB5A7B8259BACB78D5E9027643E330FAAA66"
    else
      url "https://github.com/Arch087146/costcrew/releases/download/v0.4.4/costcrew-macos-x86_64.tar.gz"
      sha256 "78578AC588F62F6F5D1DF2E245904EFE498C88BB9EB364811BD9484AF81A7ECB"
    end
  end

  on_linux do
    url "https://github.com/Arch087146/costcrew/releases/download/v0.4.4/costcrew-linux-x86_64.tar.gz"
    sha256 "4582917F7A1E18A5087ECE6F7EF522483EC85E9D87424E5E16B398B5FC3468BB"
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

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.5/miosa_2.3.5_darwin_arm64.tar.gz"
      sha256 "a8cf8bfdae729ca33035bea631801a745d0b78ee9119e771ae792b82599e99fd"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.5/miosa_2.3.5_darwin_amd64.tar.gz"
      sha256 "ae483e4273ec5c163144276ca94dcb353f11c8e65dcc29f106571e006be1f375"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.5/miosa_2.3.5_linux_arm64.tar.gz"
      sha256 "0a0462ac079333ca0cde6e26d4e580ea984a479cdb73f34af344549af297bb1c"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.5/miosa_2.3.5_linux_amd64.tar.gz"
      sha256 "6eaa8ce7d4db898e362ccccbf7947c19a616c3435a3d3e983691e1fae35afdff"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

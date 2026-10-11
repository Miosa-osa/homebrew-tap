class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.2.0/miosa_2.2.0_darwin_arm64.tar.gz"
      sha256 "0712bed82e12a3d44052abfdaa659f9615b8b1aa6c5ab7c1c408e9e7d712f38b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.2.0/miosa_2.2.0_darwin_amd64.tar.gz"
      sha256 "89c756945083e1508a2ab8e8337c6bab04e3700701f3aded7014dad5393f179c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.2.0/miosa_2.2.0_linux_arm64.tar.gz"
      sha256 "d5c8ce78b7d165c2c537094be6e5c40e961178b67d4b65e59e8b0990731af693"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.2.0/miosa_2.2.0_linux_amd64.tar.gz"
      sha256 "0d31cc2570bc518ac03941194a8360b8a498798e4578c403efab0e7048745cfc"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

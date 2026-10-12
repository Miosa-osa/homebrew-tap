class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.3/miosa_2.3.3_darwin_arm64.tar.gz"
      sha256 "dcb143d8afd162d93841f6d28d1d55026b7d2e5fa43ea604e6d0532940666df3"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.3/miosa_2.3.3_darwin_amd64.tar.gz"
      sha256 "f693d64da39b481af6b4960955b283fdd77b9f22ef0f10c53136486512b42704"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.3/miosa_2.3.3_linux_arm64.tar.gz"
      sha256 "9afd0dd55f958754ab7aba75afceee82814c81d90933713149853f36d0f0c939"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.3/miosa_2.3.3_linux_amd64.tar.gz"
      sha256 "1bee23d5f9fbc43ecfee48873ffdf6b7857b0b79d6bb2303780784a4397bf979"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

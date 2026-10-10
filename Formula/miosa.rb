class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.0.0/miosa_2.0.0_darwin_arm64.tar.gz"
      sha256 "8ff160e74f567cbce63793d300bdaa02c071bea92a6d50b0b77ba7178217da55"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.0.0/miosa_2.0.0_darwin_amd64.tar.gz"
      sha256 "187581bece21b92567923e7671bad5ade7a4c81a3d0a217d6c5dbef31430a769"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.0.0/miosa_2.0.0_linux_arm64.tar.gz"
      sha256 "ea5bd01844306835d001f69618a895eb5c2f534b5506a3584803c67360db87d2"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.0.0/miosa_2.0.0_linux_amd64.tar.gz"
      sha256 "8ab8b64d89af39ebee6f6399a3557ab56d30da5d0c8689b40829e49ce38403f2"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.14.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.14.0/miosa_2.14.0_darwin_arm64.tar.gz"
      sha256 "5317e40a97792a37379d979ea75a0f8390140ad8d5658a63b2e04a5141ddc17b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.14.0/miosa_2.14.0_darwin_amd64.tar.gz"
      sha256 "86ac6c4cd14c9f6273196498316a2d3494e75607000fdb66e2aed0a61cdad5ab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.14.0/miosa_2.14.0_linux_arm64.tar.gz"
      sha256 "eb74c593c18c0379912dc15b172c07e31c6da7cb2f5b8c7cd7b06a080a384077"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.14.0/miosa_2.14.0_linux_amd64.tar.gz"
      sha256 "fbaeed306a1dcf11c77e6e0a5e29c677bb38c02b39a1503de3363d80ed01c7f7"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

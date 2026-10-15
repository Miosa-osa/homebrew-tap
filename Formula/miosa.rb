class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.8/miosa_2.3.8_darwin_arm64.tar.gz"
      sha256 "fcb4e91b8f3028074ff153df78a19176e430e4519847e2a74c766c1c1efd94e9"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.8/miosa_2.3.8_darwin_amd64.tar.gz"
      sha256 "98bb8b2980c79fd0a709e136fc169ea43ed148536803285fc5698de5bf67cc6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.8/miosa_2.3.8_linux_arm64.tar.gz"
      sha256 "6df9b336fcb341e34b32d8bee84951c2e878078282a81cd2c276fdc1bdc1d258"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.8/miosa_2.3.8_linux_amd64.tar.gz"
      sha256 "f6580266e9a5d0105c26029fd47f69ef752940d37933dcfb1f5b5a8448c83e69"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

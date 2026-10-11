class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.0/miosa_2.3.0_darwin_arm64.tar.gz"
      sha256 "9c298270113f464530be52546611c8c27a4620d1f7aeae950cbb42202dbaa71e"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.0/miosa_2.3.0_darwin_amd64.tar.gz"
      sha256 "0ef972700151645b83d5fe9857e5d437e7ff496a4f32f5b04300cd10f363fe86"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.0/miosa_2.3.0_linux_arm64.tar.gz"
      sha256 "a5bb951b874b37b377e2420f1b9f1d3f61170b4ae49b3969b0ace3b3cd81c92b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.0/miosa_2.3.0_linux_amd64.tar.gz"
      sha256 "95715a7e13eb2fe52793f332ab8b515f92a01c17aff582ba42efa1dd9e345a76"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

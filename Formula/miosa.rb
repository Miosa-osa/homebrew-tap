class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "1.2.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.4/miosa_1.2.4_darwin_arm64.tar.gz"
      sha256 "5611a799e3bd519709951bb87a56c2b659831670b007184ffe315a4d9b260f9f"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.4/miosa_1.2.4_darwin_amd64.tar.gz"
      sha256 "c0fb7b7dd1fc24c059bc5d4d54edbe2e1b6339c475efa2582ad12bb3b7020c41"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.4/miosa_1.2.4_linux_arm64.tar.gz"
      sha256 "a3aca95ee05c4ab05e9f4fcb86eeb8632542c59d2a277b610e9489e27c35d243"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.4/miosa_1.2.4_linux_amd64.tar.gz"
      sha256 "20003034031dae944283616bcf970bd4d78b662563dfebe7b9f6f2f63e2534a9"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

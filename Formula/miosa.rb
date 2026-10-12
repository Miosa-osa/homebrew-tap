class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.1/miosa_2.3.1_darwin_arm64.tar.gz"
      sha256 "7c4a78c57c086ca50e3bc9d0d3deaea86d43dadbd4d219980e64c70086b8b033"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.1/miosa_2.3.1_darwin_amd64.tar.gz"
      sha256 "d1439cf68d68d46240db74f509b905a7fae2327bb9e967d3254989b78f261449"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.1/miosa_2.3.1_linux_arm64.tar.gz"
      sha256 "06f9346bb7d6d73512ee02d724467505afe9b188db53dfac1bed967b5400b292"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.1/miosa_2.3.1_linux_amd64.tar.gz"
      sha256 "8ace7218eb0259ea9aa28a26b3f7b0cc38ee1caf702c173d1ef0643f699272c4"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

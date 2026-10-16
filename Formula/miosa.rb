class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.10/miosa_2.3.10_darwin_arm64.tar.gz"
      sha256 "9fbbd65ee6ba4e1db79b386e6cdb6a72f898bc081754256f50b01f8e0067cfcf"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.10/miosa_2.3.10_darwin_amd64.tar.gz"
      sha256 "14883b215463f307c96bad9b1092b7b463b57dbe969d3528af8f9bd9a6230872"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.10/miosa_2.3.10_linux_arm64.tar.gz"
      sha256 "3195328ac35be929e83591f25301119f3d5dde93293b1fd1ab9a5f9b41f4f6d4"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.10/miosa_2.3.10_linux_amd64.tar.gz"
      sha256 "4f59c0a0e833c46d2791be1a18abf197bc10d1796eef87a1d39a374a84104f51"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

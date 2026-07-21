class Miosa < Formula
  desc "Official CLI for MIOSA sandboxes"
  homepage "https://miosa.ai"
  version "1.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.2/miosa_1.2.2_darwin_arm64.tar.gz"
      sha256 "64e91a2ba161d9d41f98257b35de724d90b81d03f649a603de59699d203574b7"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.2/miosa_1.2.2_darwin_amd64.tar.gz"
      sha256 "2306b0f58573c1f9bfa7960a40bdc5cef21debd6203db52cbcd01afcb45dc7e6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.2/miosa_1.2.2_linux_arm64.tar.gz"
      sha256 "744e15056b76863e8932789ac5bc63f8609eb8e53c64685c6a0840a0504eab3b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.2/miosa_1.2.2_linux_amd64.tar.gz"
      sha256 "18a390c8e7d1b9e108f76d3ba8a9758ea0a93d7d3e11956c5a8470c0912d57b9"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

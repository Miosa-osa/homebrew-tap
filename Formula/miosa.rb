class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.13/miosa_2.3.13_darwin_arm64.tar.gz"
      sha256 "b991573baa3eba2a29c7ca9ac6e0533068fefa2ed7f980dc623671ee76bfd15c"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.13/miosa_2.3.13_darwin_amd64.tar.gz"
      sha256 "74de3ec34db61e232b2992f2dec4bfa0f173eaa3bd8d21c11030c5963073a9fa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.13/miosa_2.3.13_linux_arm64.tar.gz"
      sha256 "fb205c3ea4ecb67cba6166849acff50b5ded07e2a95d34e0866ac96aba0be3f1"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.13/miosa_2.3.13_linux_amd64.tar.gz"
      sha256 "13a2151d3353a06e525d3588b465d78b0f85a2049a3e41673a21875810034957"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.6/miosa_2.3.6_darwin_arm64.tar.gz"
      sha256 "3749f8d70c89bc3e2433d1774644b54c75d21b5a182217941aeab9c0e84fc645"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.6/miosa_2.3.6_darwin_amd64.tar.gz"
      sha256 "60f9e31b2fd7cf17a3a7d56d02c3e9eb0923a2cb69915a5355790c3baea9fe7d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.6/miosa_2.3.6_linux_arm64.tar.gz"
      sha256 "91918b7019355ab904d2c21d8f3d96f8ff5a17aa68e788c48059066efdcec8a9"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.6/miosa_2.3.6_linux_amd64.tar.gz"
      sha256 "b5f3c54fe487904ca9f62d142eb2c7a9af8331f0e41ec7dfaaa083e55069cae7"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

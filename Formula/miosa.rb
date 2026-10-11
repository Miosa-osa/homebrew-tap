class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.1.0/miosa_2.1.0_darwin_arm64.tar.gz"
      sha256 "36dc6cfc08333a63fb8e89e628ed19acaaefd1c618ae98633101711ce3de4f4b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.1.0/miosa_2.1.0_darwin_amd64.tar.gz"
      sha256 "7cbfc4ca6c6c82a0c52e2a6b5860ed4b902fe32c6808d68c3ee4edf29a5d73ad"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.1.0/miosa_2.1.0_linux_arm64.tar.gz"
      sha256 "48ae55e52fd979b5a83377c0b70495481dbe6b1f814f174f88b076f3d2423489"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.1.0/miosa_2.1.0_linux_amd64.tar.gz"
      sha256 "c60c95128988ef78fae1301701de42062003a9c012ccd18af91db148c8b5e332"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

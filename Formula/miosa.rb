class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.7/miosa_2.3.7_darwin_arm64.tar.gz"
      sha256 "a129fd49194b39ff3615407a397cac0e3ff0a6e29722b8a01c38cbc50e029fd0"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.7/miosa_2.3.7_darwin_amd64.tar.gz"
      sha256 "9af2173e052ddab4f5812961db93b848028374c7e18266b2192bd2cfd279571c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.7/miosa_2.3.7_linux_arm64.tar.gz"
      sha256 "8fa43a34632f76e18849dbefb8bff9b0f967ee73611a6af05917d6d4e9f8b9c3"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.7/miosa_2.3.7_linux_amd64.tar.gz"
      sha256 "f9d42bbfc7ac619904d1b9430a68d0d40293c300f82b158bc254ea64ac9477f0"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.9/miosa_2.3.9_darwin_arm64.tar.gz"
      sha256 "6d89d6abb6991e674388811df1b1e383d68ff87d31022c6152653902594792f0"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.9/miosa_2.3.9_darwin_amd64.tar.gz"
      sha256 "7390636cd43ea220c9aef12917d69b2d2ce5cc48e60cebef162b8186680446f8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.9/miosa_2.3.9_linux_arm64.tar.gz"
      sha256 "f776c82032a28a5882a003c689fce4747f326106fc62f108fcececaf1c592dea"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.9/miosa_2.3.9_linux_amd64.tar.gz"
      sha256 "4ddd2b5bba28e9936946fc3a708cca44f9f21163696371dbff6e1ca60f0c1e01"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

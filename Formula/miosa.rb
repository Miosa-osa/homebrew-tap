class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.14/miosa_2.3.14_darwin_arm64.tar.gz"
      sha256 "a4e3e82db02795022937c45d0b49a1d903eca6bcc0e0d14ec6e50641f70bb8e5"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.14/miosa_2.3.14_darwin_amd64.tar.gz"
      sha256 "d962a17de163a2b6b77647c7442797487506f7282466ef0674ce29dcffa11ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.14/miosa_2.3.14_linux_arm64.tar.gz"
      sha256 "0da1446902b267529be3f3f89283f9e792231d18f75f866f30e14fbbbfbce6ef"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.14/miosa_2.3.14_linux_amd64.tar.gz"
      sha256 "6b279ce65743c648ee1fd0166c639ad6260bc480edfe1670b24a7f977e681795"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

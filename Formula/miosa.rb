class Miosa < Formula
  desc "Official CLI for MIOSA sandboxes"
  homepage "https://miosa.ai"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.0/miosa_1.2.0_darwin_arm64.tar.gz"
      sha256 "f3cffa77e4b8519bad694d895ac75e79c2e2b70e7d9cd0c7bd79b9cb110aa10b"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.0/miosa_1.2.0_darwin_amd64.tar.gz"
      sha256 "6d45db29411c9a9ebc3a26c26cce7ab8b42a9dd9a799fd29526e5e9436009fb7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.0/miosa_1.2.0_linux_arm64.tar.gz"
      sha256 "ef01c02f5d5416b6ea63bde01f7ddf7af3d0d7b8798c695b2e0603066e78de0c"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v1.2.0/miosa_1.2.0_linux_amd64.tar.gz"
      sha256 "da40b4e215bfbee3d008dece10cf8f9c85da08d7bada83077f97b91ba6fecaad"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.11/miosa_2.3.11_darwin_arm64.tar.gz"
      sha256 "0caadd88d10800fb629e313d1a83a84592fe18b6bb6a697a32937e10f40b8460"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.11/miosa_2.3.11_darwin_amd64.tar.gz"
      sha256 "15556bebb45431d2396e0fe9925167c9c4dae176680c34ffb96ae8912d16aa84"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.11/miosa_2.3.11_linux_arm64.tar.gz"
      sha256 "7d36b9ba4f138208b7cf86aa4aa19481fe298693efd3b35b0ee3fcebd910b057"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.11/miosa_2.3.11_linux_amd64.tar.gz"
      sha256 "4ff99e189fd8cc965bf095bed3f6ac19c35127be2b3d8113f11984cedf1913c1"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.4/miosa_2.3.4_darwin_arm64.tar.gz"
      sha256 "4eae16e648aa4bc852c7113795d4e15705597e336a82889cdd6d2f255887c411"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.4/miosa_2.3.4_darwin_amd64.tar.gz"
      sha256 "ca5d741e1211c1f9ed2eb21f2f6f33b09870df1e7162beaa9dfbdde534dd271b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.4/miosa_2.3.4_linux_arm64.tar.gz"
      sha256 "5b28677ae86d2f113dc2defb550a036c1137209a4ad4098a60d440e7f0d67374"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.4/miosa_2.3.4_linux_amd64.tar.gz"
      sha256 "f1ea6b69a941690fb01187a36f882a0823039f3f9e048ee5d9d21a0d05edfa14"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

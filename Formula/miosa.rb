class Miosa < Formula
  desc "Official CLI for MIOSA cloud and Forge"
  homepage "https://miosa.ai"
  version "2.3.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.12/miosa_2.3.12_darwin_arm64.tar.gz"
      sha256 "8cf391a5c32f1a7f734043c3d094c08eda3de2a3b23710689c8584a22e529232"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.12/miosa_2.3.12_darwin_amd64.tar.gz"
      sha256 "6a93bc43a59eef93744de59e1441b45377aa17aba92614ff8a4b72613e081ba2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.12/miosa_2.3.12_linux_arm64.tar.gz"
      sha256 "204e69e9dba85ee4d560c913409f7b6283a413471650c4d5ad9d4a8194f36eb1"
    else
      url "https://github.com/Miosa-osa/miosa-cli-go/releases/download/v2.3.12/miosa_2.3.12_linux_amd64.tar.gz"
      sha256 "d7450fb0c45a2b101881044a9c74e342ff02a46b3f6ddc78b3d96346cb0d9d25"
    end
  end

  def install
    bin.install "miosa"
  end

  test do
    assert_match "miosa version #{version}", shell_output("#{bin}/miosa version")
  end
end

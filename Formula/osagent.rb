class Osagent < Formula
  desc "Signal Theory-optimized AI agent - your OS, supercharged"
  homepage "https://github.com/Miosa-osa/OSA"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-darwin-arm64.tar.gz"
      sha256 "de14cb63e6026b4425ea50f3aeef662ee49e9f1f0bed9e4a7aa6a41abf5a557d"
    end
    on_intel do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-darwin-amd64.tar.gz"
      sha256 "c3de8a0f19ade4beb3138076f287f194f8f4e348b1cb92ac1fcaee768f0f51eb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-linux-arm64.tar.gz"
      sha256 "e17e845fdfe506407c89640689872dd13c3523febbf96eac81151554567c778b"
    end
    on_intel do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-linux-amd64.tar.gz"
      sha256 "bda79bb3633910902c5b76687168f33ec5ce601e3f2718327cde345a90c06aa6"
    end
  end

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/osagent"
  end

  test do
    assert_match "osagent v", shell_output("#{bin}/osagent version")
  end
end

class Osagent < Formula
  desc "Signal Theory-optimized AI agent - your OS, supercharged"
  homepage "https://github.com/Miosa-osa/OSA"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-darwin-arm64.tar.gz"
      sha256 "2e86575e31e8c0fa4bd57f7778e30ad9eb7235b2e6745f45aaee23f4a35fca72"
    end
    on_intel do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-darwin-amd64.tar.gz"
      sha256 "fe0df7c5780f5fdbc0f6450b603a84140ae63d8879c458c1640658f0d6833df0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-linux-arm64.tar.gz"
      sha256 "2e4c303e5d5bc96ca8835520d5bf82570136b93ea82e78486a9f1ba9cdb659bf"
    end
    on_intel do
      url "https://github.com/Miosa-osa/OSA/releases/download/v#{version}/osagent-#{version}-linux-amd64.tar.gz"
      sha256 "85aa06f98a01a91081eec10e9a538e0aae5faac0f5081a02407e28e8a77e9dd8"
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

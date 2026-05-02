class Miosa < Formula
  desc "MIOSA CLI for OpenComputers, deployments, machines, and tunnels"
  homepage "https://github.com/Miosa-osa/miosa"
  url "https://github.com/Miosa-osa/miosa/releases/download/miosa-cli-v0.1.0/miosa_0.1.0_node.tar.gz"
  sha256 "9540718620674848a0cab74e44c041d6ae5a07974d9ba52cd44173d62ed54462"
  version "0.1.0"
  license "Apache-2.0"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"miosa"
  end

  test do
    assert_match "MIOSA CLI", shell_output("#{bin}/miosa --help")
  end
end

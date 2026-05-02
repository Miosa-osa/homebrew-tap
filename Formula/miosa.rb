class Miosa < Formula
  desc "MIOSA CLI for OpenComputers, deployments, machines, and tunnels"
  homepage "https://github.com/Miosa-osa/miosa"
  url "https://github.com/Miosa-osa/homebrew-tap/releases/download/miosa-cli-v0.1.1/miosa_0.1.1_node.tar.gz"
  sha256 "a9f393f9e09196ba195f7ad93c09f388470409d7a156ab40fbc2c42fd0645c1f"
  version "0.1.1"
  license "Apache-2.0"

  depends_on "node"

  def install
    libexec.install Dir["*"]
    (bin/"miosa").write <<~SH
      #!/usr/bin/env bash
      exec "#{Formula["node"].opt_bin}/node" "#{libexec}/dist/bin/miosa.js" "$@"
    SH
  end

  test do
    assert_match "MIOSA CLI", shell_output("#{bin}/miosa --help")
  end
end

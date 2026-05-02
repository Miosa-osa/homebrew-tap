class Miosa < Formula
  desc "MIOSA CLI for OpenComputers, deployments, machines, and tunnels"
  homepage "https://github.com/Miosa-osa/miosa"
  url "https://github.com/Miosa-osa/homebrew-tap/releases/download/miosa-cli-v0.1.0/miosa_0.1.0_node.tar.gz"
  sha256 "5d2cadee34a737c0c2b5639757bc8467687fdc7c10edf48b23cf896bec9b1d10"
  version "0.1.0"
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

class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v1.0.1/kauthproxy_darwin_amd64.zip"
  version "v1.0.1"
  sha256 "096aaa92eb423a7b40b18e034d13bb13bdd68266535369900db32b8ec415cb07"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v0.6.0/kauthproxy_darwin_amd64.zip"
  version "v0.6.0"
  sha256 "dd9e3b6017e2895cbc653aca194df3100c7192a2202fc81751c428365f2eddf0"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

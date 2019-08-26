class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v0.3.0/kauthproxy_darwin_amd64.zip"
  version "v0.3.0"
  sha256 "a4fbf5a17f0c8b1d4dc8b0ea73a4a3a0ee6aa81aa40545c7e5836fdcaa5f7a77"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

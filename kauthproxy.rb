class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v1.0.0/kauthproxy_darwin_amd64.zip"
  version "v1.0.0"
  sha256 "217597c2c2e18f336f6d11b6d76982ada426e420a8786f092407adec9962e6e0"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v1.1.0/kauthproxy_darwin_amd64.zip"
  version "v1.1.0"
  sha256 "628bfae223f47f94747a9dd1503298bd3d203bc4550e56a5dd0b16805f320641"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  url "https://github.com/int128/kauthproxy/releases/download/v0.7.0/kauthproxy_darwin_amd64.zip"
  version "v0.7.0"
  sha256 "422718dde139fd50fcbda45a51670c656396ff96b5006f1e206c2a4cda61c980"
  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end
  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

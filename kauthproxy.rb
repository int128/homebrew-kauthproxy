class Kauthproxy < Formula
  desc "A kubectl plugin to forward a local port to a pod or service via authentication proxy"
  homepage "https://github.com/int128/kauthproxy"
  version "v1.1.1"

  on_macos do
    url "https://github.com/int128/kauthproxy/releases/download/v1.1.1/kauthproxy_darwin_amd64.zip"
    sha256 "1153b327db7b4015e659102f7c16bd674b9ada2c0cb06423ea1b784ad623a8f8"
  end
  on_linux do
    url "https://github.com/int128/kauthproxy/releases/download/v1.1.1/kauthproxy_linux_amd64.zip"
    sha256 "331ff9ed096806181e7cb026b937107b10c1aaa9851df949f7a9c7b4a7f5a237"
  end

  def install
    bin.install "kauthproxy" => "kauthproxy"
    ln_s bin/"kauthproxy", bin/"kubectl-auth_proxy"
  end

  test do
    system "#{bin}/kauthproxy -h"
    system "#{bin}/kubectl-auth_proxy -h"
  end
end

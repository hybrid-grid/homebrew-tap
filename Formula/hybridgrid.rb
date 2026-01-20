# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser
class Hybridgrid < Formula
  desc "Distributed multi-platform build system"
  homepage "https://github.com/hybrid-grid/hybridgrid"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.0/hybridgrid_0.2.0_darwin_amd64.tar.gz"
      sha256 "40e2d568ede82d21de48c7e1050e47a642922499a750bf5e6981641ba3346f1c"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.0/hybridgrid_0.2.0_darwin_arm64.tar.gz"
      sha256 "d2ff66138a75dd0a5d0692752e194bc77b493c22308b472a5b975cb3391f6ed3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.0/hybridgrid_0.2.0_linux_amd64.tar.gz"
      sha256 "709ffe926547f295f260204bc60aca5cf8484b24405357174b10638f3be6b916"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.0/hybridgrid_0.2.0_linux_arm64.tar.gz"
      sha256 "b564dda92e94653e4936bb0019100025db4610aca59c1d50c4e442177731a291"
    end
  end

  def install
    bin.install "hg-coord"
    bin.install "hg-worker"
    bin.install "hgbuild"
  end

  test do
    system "#{bin}/hgbuild", "version"
  end
end

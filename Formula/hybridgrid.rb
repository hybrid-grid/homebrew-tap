# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser
class Hybridgrid < Formula
  desc "Distributed multi-platform build system"
  homepage "https://github.com/hybrid-grid/hybridgrid"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.1/hybridgrid_0.2.1_darwin_amd64.tar.gz"
      sha256 "cb9fce7072b6d3d74f51b76cc8aa9081731966954524ef35a63a398d43021ce0"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.1/hybridgrid_0.2.1_darwin_arm64.tar.gz"
      sha256 "eaf0a8d9b09d1eb706a0d0a294b38d971ae5a3a5824cf05bd9845d767a479217"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.1/hybridgrid_0.2.1_linux_amd64.tar.gz"
      sha256 "12a73f8a03e2b6891656adda73149b682cf025d7a846170d5610642fa0723bc3"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.2.1/hybridgrid_0.2.1_linux_arm64.tar.gz"
      sha256 "0481463b8f1a6780b2646d072a5f1f2f1346d9b5473c95bb5c3664cd65e543ae"
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

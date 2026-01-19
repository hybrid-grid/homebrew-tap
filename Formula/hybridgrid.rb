# typed: false
# frozen_string_literal: true

# This formula is auto-updated by GoReleaser
class Hybridgrid < Formula
  desc "Distributed multi-platform build system"
  homepage "https://github.com/hybrid-grid/hybridgrid"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.1/hybridgrid_0.1.1_darwin_amd64.tar.gz"
      sha256 "52a8ccb5b89eb3b25727d1327327b605fb553063ce191c4d02599193070332e7"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.1/hybridgrid_0.1.1_darwin_arm64.tar.gz"
      sha256 "4945ea50c9863f5a40d69760f3941f251a07457bb7d5a3bce9faccfb6e4e46b8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.1/hybridgrid_0.1.1_linux_amd64.tar.gz"
      sha256 "9765dbc93a7caa9824c7e908508a2f8939586a330c4dd6a1f23294a9d92ae3a5"
    end
    on_arm do
      url "https://github.com/hybrid-grid/hybridgrid/releases/download/v0.1.1/hybridgrid_0.1.1_linux_arm64.tar.gz"
      sha256 "2a71effda308b4f75b99d52392b527fc953cee06e9ee05d22b2906e068e0eec6"
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

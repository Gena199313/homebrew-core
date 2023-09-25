class Duply < Formula
  desc "Frontend to the duplicity backup system"
  # Canonical domain: duply.net
  # Historical homepage: https://web.archive.org/web/20131126005707/ftplicity.sourceforge.net
  homepage "https://sourceforge.net/projects/ftplicity/"
  url "https://downloads.sourceforge.net/project/ftplicity/duply%20%28simple%20duplicity%29/2.5.x/duply_2.5.0.tgz"
  sha256 "355ea48fe2a503f90e647fae5c8ef3f1592d8fba6d02c0b19fd5544401d5b2da"
  license "GPL-2.0-only"

  livecheck do
    url :stable
    regex(%r{url=.*?/duply[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "f89a1a4118e274c5674522c0bc0bb259575a45a8b85bed70fc6db55e16aecc2f"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "f89a1a4118e274c5674522c0bc0bb259575a45a8b85bed70fc6db55e16aecc2f"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "f89a1a4118e274c5674522c0bc0bb259575a45a8b85bed70fc6db55e16aecc2f"
    sha256 cellar: :any_skip_relocation, ventura:        "894be2d76e34175eb58e1d8aba0d1ebefd9898901ba35cf90de122f96384f04d"
    sha256 cellar: :any_skip_relocation, monterey:       "894be2d76e34175eb58e1d8aba0d1ebefd9898901ba35cf90de122f96384f04d"
    sha256 cellar: :any_skip_relocation, big_sur:        "894be2d76e34175eb58e1d8aba0d1ebefd9898901ba35cf90de122f96384f04d"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "f89a1a4118e274c5674522c0bc0bb259575a45a8b85bed70fc6db55e16aecc2f"
  end

  depends_on "duplicity"

  def install
    bin.install "duply"
  end

  test do
    system "#{bin}/duply", "-v"
  end
end

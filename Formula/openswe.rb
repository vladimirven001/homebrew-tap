class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.1.4"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.4/openswe-darwin-arm64.tar.gz"
      sha256 "fcb560b4d94ac05c1e00c468611a7189c2cab8f324619daaf7ffd82a06765aaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.4/openswe-linux-arm64.tar.gz"
      sha256 "c7f4ec789041c02ae5103de075e180aab71baada7e0b84b44babc912abf42eb9"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.4/openswe-linux-x64.tar.gz"
      sha256 "faf6be568072dd4d3aad1bff28d6d6ddf17148cb4f7c050f50514172b1a1df30"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

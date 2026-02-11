class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.1.1"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.1/openswe-darwin-arm64.tar.gz"
      sha256 "6b936f5eeaf338b0439ab04fcfb4ce5760516e530270808dc32c6f41f800504c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.1/openswe-linux-arm64.tar.gz"
      sha256 "059737895cb1f0db0fdd5654e202568f3aa67076504e54a1cf36b0bd7653982e"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.1/openswe-linux-x64.tar.gz"
      sha256 "08a260021ffea72df1a7e5729d7a987a990d79a4397767585803a99d880746b2"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.1.2"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.2/openswe-darwin-arm64.tar.gz"
      sha256 "441921c77115eada705eec64590f4e3cb9462521856f2f07fce47177270b247d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.2/openswe-linux-arm64.tar.gz"
      sha256 "f1d9e8b41ef915195bbb028886662b326a53fee28d81a9b5536a63839ee3d616"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.2/openswe-linux-x64.tar.gz"
      sha256 "952c34d565952e3b64b4960d6893ec45c8079a4def71304657b8ff77c641110d"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

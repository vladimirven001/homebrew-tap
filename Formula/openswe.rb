class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-darwin-arm64.tar.gz"
      sha256 "e04167c6ebdd04422b9d2231ec016736b565fb5b689429769ae15206db8fb422"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-arm64.tar.gz"
      sha256 "dbb90d4f7b8720d50722cb728a5c759c56b048515f204c477562b0d63fc32c74"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-x64.tar.gz"
      sha256 "5717fe1130ef505542d2d7e3f3cf05fee2263f69a634c6befd654418892f415b"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

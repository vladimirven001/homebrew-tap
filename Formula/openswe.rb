# Homebrew formula for openswe
# This file should be placed in your homebrew-tap repo at:
# https://github.com/vladimirven001/homebrew-tap/Formula/openswe.rb
class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues with automatic worktree creation"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.0"
  license "ISC"
  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v#{version}/openswe-darwin-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_DARWIN_ARM64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v#{version}/openswe-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v#{version}/openswe-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_SHA256_LINUX_X64"
    end
  end
  def install
    bin.install "openswe"
  end
  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

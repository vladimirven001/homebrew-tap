class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.3"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.3/openswe-darwin-arm64.tar.gz"
      sha256 "54d6f0714c8467d219c2405db02d3604b2395964b753d219ba870dff4ff4f7d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.3/openswe-linux-arm64.tar.gz"
      sha256 "0e4d715003487b69c11cce7c437490bb8237c2c72c317140aa1f39bd8e5974ab"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.3/openswe-linux-x64.tar.gz"
      sha256 "5e48ffb951ec9cb4edd281441144787baeaf84474d3d355ee0a7f8e318ee5ca7"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

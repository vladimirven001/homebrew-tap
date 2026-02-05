class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.2"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.2/openswe-darwin-arm64.tar.gz"
      sha256 "849c8e51c2368f74a17803bc4de69f611a078365b245dc0bc6d316a1c8130d26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.2/openswe-linux-arm64.tar.gz"
      sha256 "94ae094a72fd600ee30950b8be962934fa144202cfde600bd6cf1885fdb01992"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.2/openswe-linux-x64.tar.gz"
      sha256 "5c14a67eb7b25633b6c305f0e0f858d213fa5a4ece07e7181ea2a6d89994b11c"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

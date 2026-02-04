class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-darwin-arm64.tar.gz"
      sha256 "3b6be327dbffb5d1b4cdaa67b4a57435d123eb770dc9ee044f23a3bced25e09a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-arm64.tar.gz"
      sha256 "6f03dbad6f64080042fc34005c94935c69e73f3a8b09a4e65a01b3e4398d02aa"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-x64.tar.gz"
      sha256 "4d4d1c8517911ee5fa6461badb6b3a328be0c9316fd6bab3d4a803904abb172c"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

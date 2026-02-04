class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-darwin-arm64.tar.gz"
      sha256 "38091c67ce0f05646b3fd26a09b8ed7e9f15cd724587517b2bf0ca1315b9a232"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-arm64.tar.gz"
      sha256 "7937d33f83956b61d5fe4d3eb031eaab3fda7658daa774168b0a0fadfe5b45f4"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.0/openswe-linux-x64.tar.gz"
      sha256 "994766235279163b27d6beeedf4109427d30ce85c4af25b7e0cc66da8e6896ff"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

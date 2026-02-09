class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.5"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.5/openswe-darwin-arm64.tar.gz"
      sha256 "91b6c7f9b447936c23280cb0ffc02a038444abeca08c291a055ae9de4e5527ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.5/openswe-linux-arm64.tar.gz"
      sha256 "a61df8f07831368e2bc3e644e4d93c9cdb7118cbd5d0d80ac6dfce8d96a951f9"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.5/openswe-linux-x64.tar.gz"
      sha256 "8776e1d65f56b16e20aa72c8efa048954966b0cec8763ba09b3455c44c49d673"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

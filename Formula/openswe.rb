class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.1"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.1/openswe-darwin-arm64.tar.gz"
      sha256 "132df9df289b203006a53c82d48409d848c19a34366342c1807465bda52c1f7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.1/openswe-linux-arm64.tar.gz"
      sha256 "f65a9af9d84cf03ecf6a75d896c2a4bec4cbed65983850d3abc3c5032e0cb67c"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.1/openswe-linux-x64.tar.gz"
      sha256 "b59ff21ecba6031e2bc9b6adfdee50fb63da8b637e2abf37210fe6396d5a6dfc"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

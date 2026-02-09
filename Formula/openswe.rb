class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.4"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.4/openswe-darwin-arm64.tar.gz"
      sha256 "1bd8846a6891ea0ba306c92f41d48d212de7ce4f10a1d76df69b217d522ba825"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.4/openswe-linux-arm64.tar.gz"
      sha256 "2eabe4c2ccb5d7158db8e3f4e5af18b756dfedd7386ceec5d479f75dc430dfeb"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.4/openswe-linux-x64.tar.gz"
      sha256 "22f75619380246be6e0bf417a02e59ae5ee2a6d1c17c4e875fb674fcbb65068f"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.1.0"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.0/openswe-darwin-arm64.tar.gz"
      sha256 "fc3e3cf6de64a6251cd48bd130137bfef3519dfafe7d63479afcd957f2d193f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.0/openswe-linux-arm64.tar.gz"
      sha256 "32d3bd05063ad69ba9ad945f9c96901f656efc22ee18993ccfc76e2627610a54"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.0/openswe-linux-x64.tar.gz"
      sha256 "511501958a1473fdad9607141715f89097f83af5551babb2cb2e3f26d125b93e"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

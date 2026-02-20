class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.1.3"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.3/openswe-darwin-arm64.tar.gz"
      sha256 "f2ddf58b173c0f8d0452fba39dc67674d9f5e3f43d26b0d13bb15b94406266e9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.3/openswe-linux-arm64.tar.gz"
      sha256 "281c557f2e52e8711a28e2e68ba292eb2ed0401b3bdc05f8f09ee9cb454c7eab"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.1.3/openswe-linux-x64.tar.gz"
      sha256 "f59556d108ddc6afe78073750b9fe86a1e838dd0e35daf8456bea1f885e885ca"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

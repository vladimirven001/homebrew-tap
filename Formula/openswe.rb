class Openswe < Formula
  desc "AI coding agent orchestration tool for tackling GitHub issues"
  homepage "https://github.com/vladimirven001/openswe"
  version "1.0.6"
  license "ISC"

  on_macos do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.6/openswe-darwin-arm64.tar.gz"
      sha256 "1ee2cfa63013bc54af00edbac5d5723583a7279039cef928b3652659cff541ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.6/openswe-linux-arm64.tar.gz"
      sha256 "171ab76f245ce77a19d209c59f1d6354a46ecf6d55f03e9fdb29be53b91cad46"
    end
    on_intel do
      url "https://github.com/vladimirven001/openswe/releases/download/v1.0.6/openswe-linux-x64.tar.gz"
      sha256 "43b6003b89455458e1a9a29775486d8166ecd2544afad54b01a70f487ab9e993"
    end
  end

  def install
    bin.install "openswe"
  end

  test do
    assert_match "openswe", shell_output("#{bin}/openswe --version", 2)
  end
end

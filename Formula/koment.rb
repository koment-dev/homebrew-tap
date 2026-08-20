class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "3.1.3"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.3/koment_3.1.3_darwin_arm64.tar.gz"
      sha256 "c1c75de2042e9768d5b6673b5e6d4b0679ae36a602b6ae984c033037ca7b9829"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.3/koment_3.1.3_darwin_amd64.tar.gz"
      sha256 "351e317d4ea05236d80fc83d18b2a2f9aad781254415a9a710dd9a9eb7607897"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.3/koment_3.1.3_linux_arm64.tar.gz"
      sha256 "54f60dcd3e988381823a251d37c624104d14e841e3a3082ad687c98bc152f83b"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.3/koment_3.1.3_linux_amd64.tar.gz"
      sha256 "b4fb38d58694ecb3395d7bd93bb945812de33ae8f4bd8ebb61ab1a4c866e8417"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

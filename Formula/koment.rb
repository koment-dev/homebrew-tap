class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "3.1.4"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.4/koment_3.1.4_darwin_arm64.tar.gz"
      sha256 "6b7e880067a77f56d3934d9ec55e9412432036372aa913d43947a44630baff19"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.4/koment_3.1.4_darwin_amd64.tar.gz"
      sha256 "67d86498baac368c4100fafb466c20a1909b1f186d231d508c032858666a6da5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.4/koment_3.1.4_linux_arm64.tar.gz"
      sha256 "a0ab5b42a1de66264f2b809618b5196b914d81ff2f183d395e183296bccabe4a"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.4/koment_3.1.4_linux_amd64.tar.gz"
      sha256 "2661b9d2f69ab58e8baaa25172e0795b5a703f5441e1102eb3864d9e8f42ad72"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

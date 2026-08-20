class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "3.1.1"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.1/koment_3.1.1_darwin_arm64.tar.gz"
      sha256 "263078074ffb81e10dbed097ab87f5e1dac208adbec302dd0bc6841075bd0cda"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.1/koment_3.1.1_darwin_amd64.tar.gz"
      sha256 "9d15780dad9264f4b5a532d36ab9b109b4e2e2b6b7910d400f1fbd2069fe741d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.1/koment_3.1.1_linux_arm64.tar.gz"
      sha256 "9900cd2035165a318cfc4f23c3f097e4518e968951c8c8127cb9600709c6ec96"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.1/koment_3.1.1_linux_amd64.tar.gz"
      sha256 "6b1e922f5c95739484b325676c6d69d1a16cbe543592f39654de93278980897d"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

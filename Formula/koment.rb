class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "1.1.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v1.1.0/koment_1.1.0_darwin_arm64.tar.gz"
      sha256 "c7ecffc50bb9a2c6879d1a8c26022ed72f8f7927613ac4eabdff165b54150179"
    else
      url "https://github.com/koment-dev/koment/releases/download/v1.1.0/koment_1.1.0_darwin_amd64.tar.gz"
      sha256 "f3edf974b36b106a97473ca944196ba2a4180b471d4a8fce6f48f5175a3e7a81"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v1.1.0/koment_1.1.0_linux_arm64.tar.gz"
      sha256 "54126cfc2645b0d54c8c590d4f43901929ea3861202f5c8511c3ae49e3dc49fc"
    else
      url "https://github.com/koment-dev/koment/releases/download/v1.1.0/koment_1.1.0_linux_amd64.tar.gz"
      sha256 "511f30a4b96079dd16bf55672bacebcdc580530c7fb496859d3e1be4005263a1"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

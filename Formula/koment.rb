class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "3.1.5"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.5/koment_3.1.5_darwin_arm64.tar.gz"
      sha256 "0747afacf6e586ead705cb452d38b0b34acc6c0e1d0d0fe19c73ea47a4659276"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.5/koment_3.1.5_darwin_amd64.tar.gz"
      sha256 "7876ddbb475b47c78b55828f4d65bbbaac0a4b28aa25c080e9ed6d3d99f6b3bc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.1.5/koment_3.1.5_linux_arm64.tar.gz"
      sha256 "fc2f6d0ebb29612b4ace15119252402521bc577ea09cb927a003211486af8693"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.1.5/koment_3.1.5_linux_amd64.tar.gz"
      sha256 "b626092258896d8d215d2d4feb2f799190a437c0d5df284e267eacb1cc66bca2"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

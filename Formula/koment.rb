class Koment < Formula
  desc "Checked out-of-band rationale for code"
  homepage "https://github.com/koment-dev/koment"
  version "3.0.0"
  license "AGPL-3.0-or-later"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.0.0/koment_3.0.0_darwin_arm64.tar.gz"
      sha256 "3fa856fffc7d5292405b99913a133bf358422661c41049d0aa4c3cc9c9238692"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.0.0/koment_3.0.0_darwin_amd64.tar.gz"
      sha256 "7d79a1ae7f0deec703f4643f7fd14e051319daed917041b98e5d4b4a4b3b96a7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/koment-dev/koment/releases/download/v3.0.0/koment_3.0.0_linux_arm64.tar.gz"
      sha256 "c0cfefef8a8b176777d62731f597127e447aa42788c342e47f2bf51439d6c68e"
    else
      url "https://github.com/koment-dev/koment/releases/download/v3.0.0/koment_3.0.0_linux_amd64.tar.gz"
      sha256 "3beb3deea08b1b2f12d40674598c1cb6a2c89ef443b65b6242babb8780167969"
    end
  end

  def install
    bin.install "koment"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/koment version")
  end
end

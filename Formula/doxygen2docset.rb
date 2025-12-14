class Doxygen2docset < Formula
  desc "From Doxygen documentation, create a Docset for use in Dash or Zeal"
  homepage "https://github.com/chinmaygarde/doxygen2docset"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/chinmaygarde/doxygen2docset/releases/download/v0.2.2/doxygen2docset-macos-aarch64.tar.gz"
      sha256 "6c224771c7680929365fe06e7cc4d0f50c9ef527aeb11aa90332ea82c250ca00"
    else
      url "https://github.com/chinmaygarde/doxygen2docset/releases/download/v0.2.2/doxygen2docset-macos-x86_64.tar.gz"
      sha256 "e277c8198878b129f2b035d1110d7b67f274153749554141cf83269180d4ee47"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/chinmaygarde/doxygen2docset/releases/download/v0.2.2/doxygen2docset-linux-aarch64.tar.gz"
      sha256 "8e7afee183f76a4e716deb6e011e5bb24e5feb41d433323124175acde8cc985a"
    else
      url "https://github.com/chinmaygarde/doxygen2docset/releases/download/v0.2.2/doxygen2docset-linux-x86_64.tar.gz"
      sha256 "6d517bf5b352d1b8ee1e50e674cd26c2395384d2612dc500305dd8b8ed9dbd63"
    end
  end

  def install
    bin.install "doxygen2docset"
  end

  test do
    system "bin/doxygen2docset", "--help"
  end
end

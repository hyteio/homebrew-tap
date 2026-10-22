class Pub < Formula
  desc "Send, receive, browse and move messages on message brokers"
  homepage "https://hyteio.github.io/pub/"
  version "1.0.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyteio/pub/releases/download/v1.0.2/pub-v1.0.2-aarch64-apple-darwin.tar.gz"
      sha256 "653ede1617c3da6d8d905b546969299cc34b529e34b2543e56748b53624a3a61"
    end
    on_intel do
      url "https://github.com/hyteio/pub/releases/download/v1.0.2/pub-v1.0.2-x86_64-apple-darwin.tar.gz"
      sha256 "fe6d41603b1d62c6b0441bd74f4ed71b4cef7c7add1981a6026958cdcd5b5519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyteio/pub/releases/download/v1.0.2/pub-v1.0.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "12fa5f5f52952248c01d69eaa49b8484b41c3bfcd471571011b6bb1041e7c504"
    end
    on_intel do
      url "https://github.com/hyteio/pub/releases/download/v1.0.2/pub-v1.0.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d8b080682216665665061dbb6676c424d0301495e7db7b6cc5e0043df85ca8cb"
    end
  end

  def install
    bin.install "pub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pub --version")
  end
end

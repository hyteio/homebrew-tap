class Pub < Formula
  desc "Send, receive, browse and move messages on message brokers"
  homepage "https://hyteio.github.io/pub/"
  version "1.0.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/hyteio/pub/releases/download/v1.0.3/pub-v1.0.3-aarch64-apple-darwin.tar.gz"
      sha256 "87fd789e20d508e38c2ce216c5335be032c30b1358e98d2dacdf3d7443a5dce2"
    end
    on_intel do
      url "https://github.com/hyteio/pub/releases/download/v1.0.3/pub-v1.0.3-x86_64-apple-darwin.tar.gz"
      sha256 "5aeb0cf615fd3a28096fd5498e2c890913f8de46c8b40b24819f8666b3f85d46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hyteio/pub/releases/download/v1.0.3/pub-v1.0.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "85a3fe8e242c10fe6834d8cba8ead488549330fd3c71f379f388c4e6c28bc15c"
    end
    on_intel do
      url "https://github.com/hyteio/pub/releases/download/v1.0.3/pub-v1.0.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "809e05d894ca16ff3e6ec2f14a13b7cfd53b85b03adf39e542992d4889728c31"
    end
  end

  def install
    bin.install "pub"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pub --version")
  end
end

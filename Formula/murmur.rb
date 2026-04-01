# typed: false
# frozen_string_literal: true

class Murmur < Formula
  desc "100% on-device voice dictation — multi-engine ASR, no cloud"
  homepage "https://github.com/jafreck/murmur"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-arm64.tar.gz"
      sha256 "b5acad31aff6663e6115d2d30b05f48c4c7a8fb7ea42c42bc3ff87e8e929e9d7"
    end

    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-x86_64.tar.gz"
      sha256 "8f8445b92d2b089ea986b81f975b224ba1add966ee5347d2facdb67b41686e94"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-linux-x86_64.tar.gz"
      sha256 "afe2f0a42bc1d3336a26eba03d84e9f39f535d750807c73d14495df5f7517f89"
    end
  end

  def install
    bin.install "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur --version")
  end
end

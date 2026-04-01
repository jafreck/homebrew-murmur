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
      sha256 "PLACEHOLDER_DARWIN_ARM64"
    end

    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-x86_64.tar.gz"
      sha256 "PLACEHOLDER_DARWIN_X86_64"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-linux-x86_64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X86_64"
    end
  end

  def install
    bin.install "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur --version")
  end
end

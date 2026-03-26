# typed: false
# frozen_string_literal: true

class Murmur < Formula
  desc "Cross-platform, local voice dictation powered by whisper.cpp"
  homepage "https://github.com/jafreck/murmur"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-arm64.tar.gz"
      sha256 "UPDATE_WITH_ACTUAL_SHA256"
    end

    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-x86_64.tar.gz"
      sha256 "UPDATE_WITH_ACTUAL_SHA256"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-linux-x86_64.tar.gz"
      sha256 "UPDATE_WITH_ACTUAL_SHA256"
    end
  end

  def install
    bin.install "murmur"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur --version")
  end
end

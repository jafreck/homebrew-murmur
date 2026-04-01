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
      sha256 "854a52740a5b822fa2eaca5833c3396b26df8667c270233c4785e7830ab878ee"
    end

    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-darwin-x86_64.tar.gz"
      sha256 "b7409c4dd29b5fdfd856bdaf24b3090007494d4ffa73de29e1255d5fd79aae75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/jafreck/murmur/releases/download/v#{version}/murmur-linux-x86_64.tar.gz"
      sha256 "4eb3245f66db8e6f81c2712f1b6b0cf7a2d95cb096b5279f63bca2b330843911"
    end
  end

  def install
    bin.install "murmur"
  end

  service do
    run [opt_bin/"murmur", "start"]
    keep_alive true
    log_path var/"log/murmur.log"
    error_log_path var/"log/murmur.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/murmur --version")
  end
end

# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.5.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.1/nestr-0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "f0ff55ffa2e32d79f8aa0f1012e45daa881099d9a8c5252401ae9f8f8a7a6220"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.1/nestr-0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "a60c1e36d16a9f864b1256db586231c8ec995c944de5ef3a67425a04986e9619"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.1/nestr-0.5.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0deb921329f5442e46920aa78318ebf5de5f28a4832223baa96b2882c843fb6f"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.1/nestr-0.5.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0494787ba6e4a92e3705d6d1947f460a88bdb4a1b57ae9b0f6eb59ca98f8e68a"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

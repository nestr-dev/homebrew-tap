# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.5.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.3/nestr-0.5.3-aarch64-apple-darwin.tar.gz"
      sha256 "606e6653be81d2ee8b88e526a38f5921e3fe7c047cd4802544bb3b2f60e50d6c"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.3/nestr-0.5.3-x86_64-apple-darwin.tar.gz"
      sha256 "05dacf7e6ee7e2f7ddc22f567501f4af69826134e297c874c95cd5b97881bff6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.3/nestr-0.5.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "55bee0dd43645557e84dc563eecbe9cc040139ab2d7368165cd69674a1e009a0"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.5.3/nestr-0.5.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "33cb97f8034e591b3060d3431bbacd7dbf7ae4a6f23628a846d7f8406cf74cc8"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

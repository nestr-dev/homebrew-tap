# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.3.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.0/nestr-0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "4bb45fde937db047a5b92516f52c968b922ae92cd16c537115a36c44693fb0fe"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.0/nestr-0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "509b14f1791e2f8a1cdb423f81619723d7fab6f76e975825091d3b649627b1e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.0/nestr-0.3.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54de0011089e5adbc936a9721e0ff31c1a45aae7eb2c79ed7379dd84ef166678"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.0/nestr-0.3.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "337d1e64a988f3ed17210b3558b02c6e097e1f44e39260d3aac423917f8f6a8f"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

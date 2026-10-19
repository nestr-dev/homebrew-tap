# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.4.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.0/nestr-0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "2c566a371a4baaeae7323201f129c6c978beca92d5828ef5fe9dcab01cf1e8ce"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.0/nestr-0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "f8471e5be7f200049b5485e46d1234a690670de8337a8c105f862c800772ffd6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.0/nestr-0.4.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e2a2112646a6322fece3c0831d078d5411777ae97f3f8ec63c26a8359cf559a"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.4.0/nestr-0.4.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6e87dbffdaf9c98387978fc2abc6ca0554bd878a59f6873399fada0021a05a11"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

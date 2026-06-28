# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.2.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.2/nestr-0.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "b90a6d4e8f54d4074597a6d33d0ed72e652dc94ff39bae957aa1bbfed72b3137"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.2/nestr-0.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "d1f2c70509dce333d3f20e70dadeb3742b870574573062c120ee6a396e8363f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.2/nestr-0.2.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5f9284e282e24ae816b31bdb5b7319b62c8147ab4eeafd56d0f195170cb7398"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.2/nestr-0.2.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ca29b19043c98e35ebb39503154bd73e7b428382a427010defceb2b7ff85d60"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

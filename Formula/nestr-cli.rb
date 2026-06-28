# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.3/nestr-0.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "5a4c4cda049160ae329ce154c18bbb17976171326df1cf11bfc0b8fcafc8e04b"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.3/nestr-0.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "dc2a6e28bb4f66d68e7fd957015d5f7d19fd8ac1ea5afb904cc9e3e9f569a437"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.3/nestr-0.2.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e025234cf93f7a62a37becb16c47efb914d9bf22d56329ac529ad58f38c72553"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.2.3/nestr-0.2.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47f8bdd0d1cb899c55b7a4aa69b0fd1c03b89207815de36fc0583dcfdf17961b"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

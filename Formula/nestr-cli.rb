# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.3.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.1/nestr-0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "ebf78d7a6ed7e0e590a5251e27a6f1af010b1336ad3bc0f8d02b571030e27a5c"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.1/nestr-0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "326168d8d3dbad229012536059d9e4178bccfaeb4ed1a1de1a2e1217824c585f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.1/nestr-0.3.1-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f5a92a87b46f5550d20df68ee4a078044abccd3c553df5038d7f244e801a4e74"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.1/nestr-0.3.1-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8fdb036e534bc6e88574845d9f5ca60feac863e98b7ae7df09cb284e807df4d4"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end

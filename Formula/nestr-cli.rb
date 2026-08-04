# typed: false
# frozen_string_literal: true

# Auto-generated from .github/homebrew/nestr-cli.rb.tmpl by nestr-cli's release
# workflow (.github/workflows/release.yml) on each v* tag — do not hand-edit.
class NestrCli < Formula
  desc "Fast, composable CLI for Nestr — for terminals and agents"
  homepage "https://github.com/nestr-dev/nestr-cli"
  version "0.3.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.2/nestr-0.3.2-aarch64-apple-darwin.tar.gz"
      sha256 "7b3a1e5c7c3545d65622caa87bec8abce09b50db9988b2d449ae65393d18911d"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.2/nestr-0.3.2-x86_64-apple-darwin.tar.gz"
      sha256 "d344ceb1250e0d2a2dcd6326c667aafcc54d4a7601a33d08daf61c0ab3dc3297"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.2/nestr-0.3.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58ce76f91c8bcf5d469a22c4784bf113847121064531e150af14adf9790b3911"
    end
    on_intel do
      url "https://github.com/nestr-dev/nestr-cli/releases/download/v0.3.2/nestr-0.3.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1c7606c38d72b7e83ad1a32f330d788b14839c5e65176840f575a234b84b585"
    end
  end

  def install
    bin.install "nestr"
  end

  test do
    assert_match "nestr #{version}", shell_output("#{bin}/nestr --version")
  end
end
